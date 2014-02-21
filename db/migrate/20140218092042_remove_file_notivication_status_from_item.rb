class RemoveFileNotivicationStatusFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :notification, :boolean
  end
end
