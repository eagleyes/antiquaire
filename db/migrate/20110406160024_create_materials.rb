class CreateMaterials < ActiveRecord::Migration
  def self.up
    create_table :materials do |t|
      t.string :name_fr
      t.string :name_en
      t.boolean :valid , :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :materials
  end
end
