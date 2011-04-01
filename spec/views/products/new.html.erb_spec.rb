require 'spec_helper'

describe "products/new.html.erb" do
  before(:each) do
    assign(:product, stub_model(Product,
      :name_en => "MyString",
      :name_fr => "MyString",
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
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path, :method => "post" do
      assert_select "input#product_name_en", :name => "product[name_en]"
      assert_select "input#product_name_fr", :name => "product[name_fr]"
      assert_select "textarea#product_description_fr", :name => "product[description_fr]"
      assert_select "textarea#product_description_en", :name => "product[description_en]"
      assert_select "input#product_category_id", :name => "product[category_id]"
      assert_select "input#product_manufacture_year", :name => "product[manufacture_year]"
      assert_select "input#product_purchase_price", :name => "product[purchase_price]"
      assert_select "input#product_qty_in_stock", :name => "product[qty_in_stock]"
      assert_select "input#product_qty_in_stock_adj", :name => "product[qty_in_stock_adj]"
      assert_select "input#product_country_id", :name => "product[country_id]"
      assert_select "input#product_height", :name => "product[height]"
      assert_select "input#product_width", :name => "product[width]"
      assert_select "input#product_length", :name => "product[length]"
      assert_select "input#product_material_id", :name => "product[material_id]"
      assert_select "input#product_style_id", :name => "product[style_id]"
      assert_select "input#product_photo", :name => "product[photo]"
    end
  end
end
