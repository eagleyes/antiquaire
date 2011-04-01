class RemoveNameFromProducts < ActiveRecord::Migration
  def self.up
    remove_column :products, :name_fr
    remove_column :products, :name_en
  end

  def self.down
    add_column :products, :name_fr, :string
    add_column :products, :name_en, :string
  end
end
