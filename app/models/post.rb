class Post < ApplicationRecord
  belongs_to :user
  has_many :tagged_users
  has_many_attached :pictures
  has_one_attached :video
  has_one_attached :audio

  validates :caption, presence: true
end
