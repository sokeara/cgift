class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :dob
      t.string :pob
      t.string :skills
      t.string :favorite
      t.string :dream
      t.string :current_job
      t.integer :user_id
      t.timestamps
    end
  end
end
