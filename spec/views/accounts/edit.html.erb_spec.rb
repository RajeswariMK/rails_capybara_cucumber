require 'spec_helper'

describe "accounts/edit" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :user => "MyString",
      :acc_type => false,
      :area => "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path(@account), :method => "post" do
      assert_select "input#account_user", :name => "account[user]"
      assert_select "input#account_acc_type", :name => "account[acc_type]"
      assert_select "input#account_area", :name => "account[area]"
    end
  end
end
