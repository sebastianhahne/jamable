class AddToUserModel < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string
    add_column :users, :address, :string
    add_column :users, :availability, :boolean, default: true
  end
end
