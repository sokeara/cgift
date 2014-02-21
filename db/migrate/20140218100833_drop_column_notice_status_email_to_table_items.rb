class DropColumnNoticeStatusEmailToTableItems < ActiveRecord::Migration
  def change
  	remove_column :items, :notification_status
  end
end
