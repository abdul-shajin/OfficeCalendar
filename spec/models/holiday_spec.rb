require 'spec_helper'

describe Holiday do
  before do
    @holiday = Holiday.create(:date => Date.today, :name => 'Name Field')
  end
  it "is invalid without a holiday date" do
    Holiday.create(:name => 'random name').should_not be_valid
  end

  it "is invalid without a holiday name" do
    Holiday.create(:date => Date.today).should_not be_valid
  end

  it 'is valid with correct parameters' do
    Holiday.create(:date => Date.today,name: 'Some name').should be_valid
  end

   it 'should give correct date between ranges' do
    hol = Holiday.holiday_between(1.month.ago.to_date,Date.tomorrow)
    hol.should include @holiday
   end

end
