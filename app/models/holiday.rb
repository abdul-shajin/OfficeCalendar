class Holiday < ActiveRecord::Base
  attr_accessible :date, :name
  validates :date, :presence => true
  validates :name, :presence => true

  def self.holiday_between start_date,end_date
    where(:date => start_date..end_date)
  end
end
