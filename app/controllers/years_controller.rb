class YearsController < ApplicationController

  # root GET    /                         years#index
  # gets the years index page; calls the view of the root page or year#index controller action
  def index
    @years =Year.all
  end

end
