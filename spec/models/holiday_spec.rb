require 'spec_helper'

describe Holiday do
  it "is invalid without a holiday date" do
    Holiday.create(:name => 'random name').should_not be_valid
  end

  it "is invalid without a holiday name" do
    Holiday.create(:date => Date.today).should_not be_valid
  end

end
