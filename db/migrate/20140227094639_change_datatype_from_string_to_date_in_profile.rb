class ChangeDatatypeFromStringToDateInProfile < ActiveRecord::Migration
  def self.up
   		change_column :profiles, :dob, :date
    end
   def self.down
       change_column :profiles, :dob, :string
   end
end
