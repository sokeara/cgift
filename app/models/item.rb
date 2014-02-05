class Item < ActiveRecord::Base
	belongs_to :user
	# validates:id_item, 
	validates:id_item, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 50}
	validates:name_item, length: {maximum: 8}
	validates:img_item, length: {maximum: 8}
end
