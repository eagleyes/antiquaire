class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name_en
      t.string :name_fr
      t.text :description_fr
      t.text :description_en
      t.integer :category_id
      t.date :purchase_date
      t.integer :manufacture_year
      t.float :purchase_price
      t.integer :qty_in_stock
      t.integer :qty_in_stock_adj
      t.integer :country_id
      t.float :height
      t.float :width
      t.float :length
      t.integer :material_id
      t.integer :style_id
      t.binary :photo

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
