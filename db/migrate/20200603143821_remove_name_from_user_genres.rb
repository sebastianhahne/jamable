class RemoveNameFromUserGenres < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_genres, :name
  end
end
