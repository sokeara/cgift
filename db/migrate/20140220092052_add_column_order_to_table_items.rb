class AddColumnOrderToTableItems < ActiveRecord::Migration
  def change
  	add_column :items, :id_item, :integer
  end
end
