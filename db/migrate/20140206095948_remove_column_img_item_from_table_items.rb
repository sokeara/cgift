class RemoveColumnImgItemFromTableItems < ActiveRecord::Migration
  def change
  	remove_column :items, :img_item
  end
end
