class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.integer :user_id
    	t.string :first_name
    	t.string :last_name
        t.string :gender
    	t.string :username
        t.string :password
        t.string :email
    	t.integer :phone_num
    	t.string :address
    	t.timestamps
    end
  end
end
