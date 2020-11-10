class SolutionsController < ApplicationController
  before_action :set_params, only:[:show, :edit, :update, :destroy]
  def index
    @solutions = Solution.all
  end

  def new
    @solution = Solution.new
  end

  def create
    @problem = Problem.find(params[:id])
    @solution = @problem.solutions.create(solution_params)
    redirect_to problem_solutions_path
    # @solution = Problem.solution.create(solution_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_params
    @solution = Solution.find(params[:id])
  end

  def solution_params
    params.require(:solution).permit(:title, :body)#also includes :id
  end

end