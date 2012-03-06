Given /^I visit the create product page$/ do
  visit(new_product_path)
end

When /^I create a product$/ do
  fill_in :name, :with => 'Some product'
  fill_in 'Description', :with => 'Some product description'
  fill_in :price, :with => 3.147
  click_button 'Create Product'
end

Then /^I should see that I created a product$/ do
  page.has_content?('Product successfully created!')
end
