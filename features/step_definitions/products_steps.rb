def create_products
  (1..5).each do |n|
    Product.create!(:title => "product_#{n}")
  end
end

Given /^I have list of products$/ do
  (1..5).each do |n|
    Product.create!(:title => "product_#{n}")
  end
end

Given /^I have no products$/ do
  Product.delete_all
end

When /^I go to the index page$/ do
 visit '/products' 
end

When /^I go to first product$/ do
 @product = Product.first
 visit product_path(@product)
end

When /^I go to new product link$/ do
  visit new_product_path
end

Then /^I should see a product$/ do
end

Then /^I should see new product link$/ do
  page.should have_link "New Product"
end

Then /^I should see edit link$/ do
  page.should have_link "Edit"
end

Then /^I should have one product$/ do
  @product = Product.new 
  fill_in "Title", :with => "New title" 
  fill_in "Price", :with => "122"
  fill_in "Description", :with => "Product description goes here"
  click_button "Create Product"
  Product.count.should == 1
end
