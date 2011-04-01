require 'spec_helper'

describe "products/index.html.erb" do
  before(:each) do
    assign(:products, [
      stub_model(Product,
        :name_en => "Name En",
        :name_fr => "Name Fr",
        :description_fr => "MyText",
        :description_en => "MyText",
        :category_id => 1,
        :manufacture_year => 1,
        :purchase_price => 1.5,
        :qty_in_stock => 1,
        :qty_in_stock_adj => 1,
        :country_id => 1,
        :height => 1.5,
        :width => 1.5,
        :length => 1.5,
        :material_id => 1,
        :style_id => 1,
        :photo => ""
      ),
      stub_model(Product,
        :name_en => "Name En",
        :name_fr => "Name Fr",
        :description_fr => "MyText",
        :description_en => "MyText",
        :category_id => 1,
        :manufacture_year => 1,
        :purchase_price => 1.5,
        :qty_in_stock => 1,
        :qty_in_stock_adj => 1,
        :country_id => 1,
        :height => 1.5,
        :width => 1.5,
        :length => 1.5,
        :material_id => 1,
        :style_id => 1,
        :photo => ""
      )
    ])
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name En".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name Fr".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
