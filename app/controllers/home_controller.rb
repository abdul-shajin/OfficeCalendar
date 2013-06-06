class HomeController < ApplicationController

  def index
    @off_days = ["sun","sat"]
  end
end
