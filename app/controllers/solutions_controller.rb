class SolutionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_solution, only: %i[show edit update destroy]
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
        price_data: {
          currency: 'aud',
          product_data: {
            name: @solution.title
          },
          unit_amount: (@solution.price * 100).to_i
        },
        quantity: 1
      }],
      mode: 'payment',
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

  def set_solution
    @solution = Solution.find(params[:id])
  end

  def solution_params
    params.require(:solution).permit(:title, :body, :image, :document, :price)
  end

  def authorize_user!
    redirect_to problem_solutions_path(params[:problem_id]) unless @solution.user == current_user
  end
end
