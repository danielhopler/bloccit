class AddPostsCount < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :posts_count, :integer, :null => false, default: 0
  end
end
