class RemoveFileNameNotificatioFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :notification_status, :boolean
  end
end
