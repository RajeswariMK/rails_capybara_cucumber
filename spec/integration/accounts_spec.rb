require 'spec_helper'

describe 'accounts index page' do
  before(:all) do
    driver = Selenium::WebDriver.for :firefox
  end
  
  it "should visit" do
    visit accounts_path
    current_path.should == accounts_path
  end
  
end  

describe 'accounts new page' do
  it "should enabled javascript" do
    visit new_account_path
    page.select 'September', :from => 'account_area'
    page.should have_content('September')
    
  end
end
