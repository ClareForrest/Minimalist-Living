class SolutionsController < ApplicationController

  def index
    @solutions = Solution.all
  end

  def new
    @solution = Solution.new
  end

  def create
    @problem = Problems.solutions.create(solution_params)
    redirect_to solutions_path
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

  def set_solution
    # @solution = 
  end

  def solution_params
    params.require(:solution).permit(:title, :body)
  end

end
