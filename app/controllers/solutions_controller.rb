class SolutionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @solutions = Solution.all
  end

  def new
    @solution = Solution.new
  end

  def create
    redirect_to solutions_path
  end

  private

  def solution_params
    params.require(:solution).permit(:title, :body)
  end

end
