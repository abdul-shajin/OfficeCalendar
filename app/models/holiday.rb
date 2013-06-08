class Holiday < ActiveRecord::Base
  attr_accessible :date, :name
  validates :date, :presence => true
  validates :name, :presence => true


  OFF_DAYS = ['sat','sun'] #Change this to set-up off days

  def self.holiday_between start_date,end_date
    where(:date => start_date..end_date).select('date,name')
  end
end
