class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.string :name
      t.string :sender
      t.string :receiver
      # t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
