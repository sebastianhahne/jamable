class AddToUserModel < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :genres, :string
    add_column :users, :address, :string
    add_column :users, :availability, :boolean
    add_reference :users, :instrument, foreign_key: true
  end
end
