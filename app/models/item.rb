class Item < ActiveRecord::Base
	belongs_to :user

	has_attached_file :img_item, :default_url => "/images/:style/missing.png"

  	# add field avatar to table

  	validates_attachment_content_type :img_item, :content_type => ['image/jpeg', 'image/png', 'image/jpg']

	# validates:id_item, 
	validates:name_item, length: {maximum: 200}
end
