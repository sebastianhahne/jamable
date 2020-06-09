class CreateChatrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.integer :sender
      t.integer :receiver
      t.timestamps
    end
  end
end
