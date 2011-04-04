class RemoveDescriptionFromProducts < ActiveRecord::Migration
  def self.up
    remove_column :products , :description_fr
    remove_column :products , :description_en
  end

  def self.down
    add_column :products , :description_fr, :string
    add_column :products , :description_en, :string
  end
end
