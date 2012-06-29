require 'acceptance/acceptance_helper'

feature 'Creating products' do

  scenario 'creating a product' do
    visit new_product_path

    fill_in :name, :with => 'Some product'
    fill_in 'Description', :with => 'Some product description'
    fill_in :price, :with => 3.147
    click_button 'Create Product'

    page.has_content?('Product successfully created!')
  end

end
