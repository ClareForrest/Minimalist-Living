class HomeController < ApplicationController
  def index
    redirect_to problems_path
  end
end
