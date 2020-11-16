class ProblemsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_problem, only: %i[show edit update destroy]
  before_action :authorize_user!, only: %i[edit update destroy]

  def index
    @problems = Problem.all
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = current_user.problems.create!(problem_params)
    redirect_to problem_path(@problem.id)
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
    @problem = Problem.find(params[:id])
  end

  def problem_params
    params.require(:problem).permit(:title, :body, :category, :image, :document)
  end

  def authorize_user!
    redirect_to problems_path(params[:problem_id]) unless @problem.user == current_user
  end
end
