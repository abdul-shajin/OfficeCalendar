require 'spec_helper'
describe "HomePages" do
  subject { page }
  before { visit '/' }
  describe 'root page' do
    it 'should have right title' do
      it { should have_selector('title', :text => 'Office Calendar') }
    end
  end
end
