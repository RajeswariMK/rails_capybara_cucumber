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

When /^I go to edit first product link$/ do 
  @product = Product.first
  visit edit_product_path(@product)
end

When /^I type in "([^\"]*)" into autocomplete list "([^\"]*)" and I choose "([^\"]*)"$/ do |typed, input_name,should_select|
   page.driver.browser.execute_script %Q{ $('input[data-autocomplete]').trigger("focus") }
   fill_in("#{input_name}",:with => typed)
   page.driver.browser.execute_script %Q{ $('input[data-autocomplete]').trigger("keydown") }
   sleep 1
   page.driver.browser.execute_script %Q{ $('.ui-menu-item a:contains("#{should_select}")').trigger("mouseenter").trigger("click"); }
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

Then /^I should update product$/ do
  @product = Product.first
  fill_in "Title", :with => "Updated title"
  click_button "Update Product"
  page.should have_content "Product was successfully updated."
end


