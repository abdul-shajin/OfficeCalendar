class HomeController < ApplicationController

  def index
    @off_days = ["sun","sat"]
  end

  def admin
    @admin = {name: 'Mr.Administrator', role: 'admin'}
    @holiday = Holiday.new
    @holidays = Holiday.all
  end

  def create_holiday
    p params.inspect
    @holiday = Holiday.new(params[:holiday])
    @holiday.save
    redirect_to admin_path
  end
end
