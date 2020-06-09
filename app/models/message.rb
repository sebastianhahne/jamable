class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom

  validates :content, presence: true

  after_create :broadcast_message

  def broadcast_message
    ActionCable.server.broadcast("chatroom_#{chatroom.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message",
        locals: { message: self, user_is_messages_author: false }
        ),
      current_user_id: user.id
    })
  end
end
