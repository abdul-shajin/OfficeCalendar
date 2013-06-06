require 'spec_helper'
describe "HomePages" do
  subject { page }
  describe 'root page' do
    before { visit root_path }
    it { should have_selector('title', :text => 'Office Calendar') }
  end
end
