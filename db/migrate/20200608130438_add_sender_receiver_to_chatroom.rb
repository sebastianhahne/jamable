class AddSenderReceiverToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_column :chatrooms, :sender, :integer
    add_column :chatrooms, :receiver, :integer
  end
end
