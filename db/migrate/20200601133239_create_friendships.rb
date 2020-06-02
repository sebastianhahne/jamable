class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.references :asker, foreign_key: { to_table: :users }
      t.references :receiver, foreign_key: { to_table: :users }
      t.string :status, default: 'Pending'
      t.timestamps
    end
  end
end
