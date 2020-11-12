class SolutionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_params, only: %i[show edit update destroy]
  before_action :authorize_user!, only: %i[edit update destroy]

  def index
    @solutions = Solution.all
  end

  def new
    @solution = Solution.new
  end

  def create
    @problem = Problem.find(params[:problem_id])
    @solution = @problem.solutions.new(solution_params)
    @solution.user = current_user
    @solution.save
    redirect_to problem_solution_path(@problem, @solution)
  end

  def show
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      customer_email: current_user.email,
      line_items: [{
        name: @solution.title,
        description: @solution.body,
        images: @solution.image,
        amount: (@solution.price).to_i, #amount needs to be an integer
        currency: 'aud',
        quantity: 1
      }],
      payment_intent_data: {
        metadata: {
        solution_id: @solution.id,
        # problem_id: @problem.id,
        user_id: current_user.id
        }
      },
      success_url: "#{root_url}payments/success?solutionId=#{@solution.id}",
      cancel_url: "#{root_url}solutions"
    )
    @session_id = session.id
  end

  def edit
    @problem_id = params[:problem_id]
  end

  def update
    @solution.update(solution_params)
    redirect_to problem_solutions_path
  end

  def destroy
    @solution.destroy
    redirect_to problem_solutions_path
  end

  private

  def set_params
    @solution = Solution.find(params[:id])
  end

  def solution_params
    params.require(:solution).permit(:title, :body, :image, :document, :price) # also includes PK :id and FK user_id and problem_id
  end

  def authorize_user!
    unless @solution.user == current_user
      redirect_to problem_solutions_path(params[:problem_id])
      # put in an alert here
    end
  end
end
