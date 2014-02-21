class ChangeColumnNoticeStatusEmailToTableItems < ActiveRecord::Migration
  def change
  	change_column :items, :notification_status, :boolean, :default => true
  end
end
