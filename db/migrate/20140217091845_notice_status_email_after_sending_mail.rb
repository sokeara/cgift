lass NoticeStatusEmailAfterSendingMail < ActiveRecord::Migration
  def change
  	add_column :items, :notification_status, :boolean
  end
end
