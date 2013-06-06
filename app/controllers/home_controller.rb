class HomeController < ApplicationController

  def index
    @off_days = ["sun","sat"]
  end

  def admin
    @admin = {name: 'Mr.Administrator', role: 'admin'}
    @holiday = Holiday.new
  end

  def create_holiday
    p params.inspect
    @holiday = Holiday.new(params[:holiday])
  end
end
