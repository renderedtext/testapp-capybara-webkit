require 'spec_helper'

describe "products/show.html.erb" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :name => "Name",
      :description => "MyText",
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
  end
end
