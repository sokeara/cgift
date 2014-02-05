class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :id_item
      t.string :name_item
      t.string :img_item
      t.timestamps
    end
  end
end  
