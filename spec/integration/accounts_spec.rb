require 'spec_helper'


describe 'accounts new page' do
  it "should enabled javascript" do
    visit new_account_path
    page.select 'September', :from => 'account_area'
    page.should have_content('September')
    
  end
end
