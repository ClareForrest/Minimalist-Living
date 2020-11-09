class ProblemsController < ApplicationController
  before_action :set_params, only:[:show, :edit, :update, :delete]
  def index
    @problems = Problem.all
  end

  def new
    @problem = Problem.new
  end

  def create
    current_user.problems.create(problem_params)
    redirect_to problems_path
  end

  def show
  end

  def edit
    @problem = Problem.find(params[:problem][:id])
  end

  def update
  end

  private

  def set_params
    @problem = Problem.find(params[:id])
  end

  def problem_params
    params.require(:problem).permit(:title, :body, :id)
  end
end
