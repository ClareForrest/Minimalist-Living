class ProblemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_problem, only: %i[show edit update destroy]
  before_action :authorize_user!, only: %i[edit update destroy]

  def index
  #Query searches category column of problem table for full/partial matches from user entered data
    @problems = if params[:search].present?
                  @problems = Problem.where('category ILIKE ?', "%#{params[:search][:category]}%")
                else
                  Problem.all
                end
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = current_user.problems.new(problem_params)
    if @problem.save
      redirect_to problem_path(@problem.id)
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    @problem.update(problem_params)
    redirect_to problem_path(@problem[:id])
  end

  def destroy
    @problem.destroy
    redirect_to problems_path
  end

  private

  def set_problem
    @problem = Problem.includes(solutions: [image_attachment: :blob]).find(params[:id])
  end

  def problem_params
    params.require(:problem).permit(:title, :body, :category, :image)
  end

  def authorize_user!
    redirect_to problems_path(params[:problem_id]) unless @problem.user == current_user
  end
end
