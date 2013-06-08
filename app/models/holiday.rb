class Holiday < ActiveRecord::Base
  attr_accessible :date, :name
  validates :date, :presence => true
  validates :name, :presence => true


  OFF_DAYS = ['sat','sun'] #Change this to set-up off days

  def self.holiday_between start_date,end_date
    where(:date => start_date..end_date).select('date,name')
  end

  def self.holiday_around
    where(:date => 1.month.ago.beginning_of_month.to_date..1.month.from_now.end_of_month.to_date)
  end
end
