class ChangeColumnUserIdInTableProfileToPersonId < ActiveRecord::Migration
  def change
		rename_column :profiles, :user_id, :person_id
  end
end
