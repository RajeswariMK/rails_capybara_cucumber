require 'spec_helper'

describe "products/index" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :title => "Title",
        :price => "9.99",
        :description => "MyText"
      ),
      stub_model(Product,
        :title => "Title",
        :price => "9.99",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of products" do
  
  end
end
