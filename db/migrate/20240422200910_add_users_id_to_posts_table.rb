class AddUsersIdToPostsTable < ActiveRecord::Migration[7.1]
  def change
    change_table :posts do |t|
			t.belongs_to :users
		end
  end
end
