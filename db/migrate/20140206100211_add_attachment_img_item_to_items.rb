class AddAttachmentImgItemToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :img_item
    end
  end

  def self.down
    drop_attached_file :items, :img_item
  end
end
