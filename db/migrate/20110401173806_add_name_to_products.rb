class AddNameToProducts < ActiveRecord::Migration
  def self.up
    Product.create_translation_table! :title => :string, :text => :text
  end
  def self.down
    Product.drop_translation_table!
  end

end
