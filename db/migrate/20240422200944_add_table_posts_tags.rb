class AddTablePostsTags < ActiveRecord::Migration[7.1]
  def change
    create_table :posts_tags do |t|
			t.belongs_to :posts
			t.belongs_to :tags
		end
  end
end
