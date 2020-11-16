class HomeController < ApplicationController
  def index; end

  def search
    if params[:search].present?
      redirect_to problems_path
    else
      render 'search'
    end
  end
end
