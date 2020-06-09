class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.integer :sender, default: 0
      t.integer :receiver, default: 0
      t.timestamps
    end
  end
end
