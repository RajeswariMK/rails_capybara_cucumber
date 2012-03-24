require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :title => "Title",
      :price => "9.99",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
  
  end
end
