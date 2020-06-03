class Message < ApplicationRecord
  include PgSearch
  pg_search_scope :search_in_messages, against: [:content]

  belongs_to :user
  belongs_to :chatroom

  validates :content, presence: true
end
