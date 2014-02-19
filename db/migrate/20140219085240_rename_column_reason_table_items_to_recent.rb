class RenameColumnReasonTableItemsToRecent < ActiveRecord::Migration
  def change
  	rename_column :items, :reason, :recent
  end
end
