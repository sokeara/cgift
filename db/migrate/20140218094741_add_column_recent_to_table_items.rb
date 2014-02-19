class AddColumnRecentToTableItems < ActiveRecord::Migration
  def change
  	add_column :items, :reason, :boolean, :default => false
  end
end
