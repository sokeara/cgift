class ItemsController < ApplicationController

	def index
		add_breadcrumb "Home", users_path
		add_breadcrumb "Item"

		@user = User.find_by_id(params[:user_id])
		# @item = @user.items
		@item = Item.find_all_by_user_id(params[:user_id])
	end

	def new
		add_breadcrumb "Home", users_path
		add_breadcrumb "Add New item"

		@user = User.find_by_id(params[:user_id])
		@item = Item.new
	end

	def create
		@item = Item.new
		@user = User.find_by_id(params[:user_id])
		@item.user_id = params[:user_id]
		@item.name_item = params[:item][:name_item]
		@item.img_item = params[:item][:img_item]
		if @item.save
			flash[:notice] = "Data sucessfully to save in our system!"
			redirect_to user_items_path(@user)
		else
			flash[:error] = "Data not correct!"	
			flash[:notice] = "Please try again!"
			redirect_to user_items_path(@user)
		end
	end
	def edit
		@user = User.find_by_id(params[:user_id])
		@item = Item.find_by_id(params[:id])
	end
	def update
		@user = User.find_by_id(params[:id])
		@item = Item.find_by_id(params[:id])
		@item.name_item = params[:item][:name_item]
		@item.img_item = params[:item][:img_item]
		@item.save
		redirect_to user_items_path
	end
	def destroy
		
		item = Item.find_by_id(params[:id])
		item.destroy
		redirect_to user_items_path
		flash.notice = "Sucessful deleted!"
	end

	def send_to()
		
	end

end
