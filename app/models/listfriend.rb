class Listfriend < ApplicationRecord
	belongs_to :user , :foreign_key => :user_id, class_name: 'User' #name tu dat
	belongs_to :friend, :foreign_key => :friend_id, class_name: 'User'
end
