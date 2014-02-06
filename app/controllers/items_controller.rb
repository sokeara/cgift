class ItemsController < ApplicationController
	def index
		@items = Item.all
	end
	def new
		@items = Item.new
	end
	
	def create
		@items = Item.new
		@items.id_item = params[:item][:id_item]
		@items.name_item = params[:item][:name_item]
		@items.img_item = params[:item][:img_item]
		@items.save
		if @items.save
			flash[:notice] = "Data sucessful to save in our system!"
			redirect_to items_path
		else
			flash[:error] = "Data not correct!"	
			flash[:notice] = "Please try again!"
			redirect_to items_path
		end
	end
	def edit
		@item = Item.find_by_id(params[:id])
	end
	def update
		@item = Item.find_by_id(params[:id])
		@item.id_item = params[:item][:id_item]
		@item.name_item = params[:item][:name_item]
		@item.img_item = params[:item][:img_item]
		@item.save

		redirect_to items_path
	end
	def destroy
		item = Item.find_by_id(params[:id])
		item.destroy
		redirect_to items_path
		flash.notice = "Sucessful deleted!"
	end
end
