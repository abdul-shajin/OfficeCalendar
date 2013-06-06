require 'spec_helper'
describe "HomePages" do
  subject { page }
  describe 'root page', :js => true do
    before { visit root_path }
    it { should have_selector('title', :text => 'Office Calendar') }
    it { should have_content('Welcome to Office Calendar')}
    it { should have_content(Date.today.strftime('%B'))}
  end
end
