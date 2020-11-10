class ProblemsController < ApplicationController
  before_action :set_params, only:[:show, :edit, :update, :destroy]

  def index
    @problems = Problem.all
  end

  def new
    @problem = Problem.new
  end

  def create
    @problem = current_user.problems.create(problem_params)
    redirect_to problems_path
  end

  def show
  end

  def edit
  end

  def update
    @problem.update(problem_params)
    redirect_to problems_path
  end

  def destroy
    @problem.destroy
    redirect_to problems_path
  end

  private

  def set_params
    @problem = Problem.find(params[:id])
  end

  def problem_params
    params.require(:problem).permit(:title, :body)
  end
end
