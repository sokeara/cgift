class RemoveColumnIdItemFromTableItems < ActiveRecord::Migration
  def change
  	remove_column :items, :id_item
  end
end
