Given /^I have a product$/ do
  @product = Product.create!(:name => 'A book', :price => 5.0)
end

Given /^I visit the products page$/ do
  visit products_path
end

When /^I try to download a pdf file$/ do
  click_link 'Pdf'
end

Then /^I should download the pdf file$/ do
  page.response_headers["Content-Type"].should == "application/pdf"
end
