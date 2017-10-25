class FriendController < ApplicationController
	def index
		@listIDUser = Listfriend.where("user_id=#{current_user.id}") #params[:user])
	end
	def search
		@usersearch = User.find(6)
		redirect_to listfriend_path
		
	end
	def add
		if @usersearch != nil
			Listfriend.create!(user_id: current_user.id,friend_id: @usersearch.id)
		end
		redirect_to listfriend_path
	end
end
