class HomeController < ApplicationController
  def index; end

  def search
  #Query enables search of problems category and redirects to index page
    if params[:search].present?
      redirect_to problems_path
    else
      render 'search'
    end
  end
end
