class CreateListfriends < ActiveRecord::Migration[5.1]
  def change
    create_table :listfriends do |t|
		t.integer :user_id
    	t.integer :friend_id
      t.timestamps
    end
  end
end
