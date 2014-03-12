class ChangeColumnUserIdInTableItemsToPersonId < ActiveRecord::Migration
  def change
		rename_column :items, :user_id, :person_id
  end
end
