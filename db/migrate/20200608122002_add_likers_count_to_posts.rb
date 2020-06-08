class AddLikersCountToPosts < ActiveRecord::Migration[6.0]
  def change
  add_column :posts, :likers_count, :integer, default: 0
  end
end
