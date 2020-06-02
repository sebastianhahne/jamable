class Post < ApplicationRecord
  belongs_to :user
  has_many :tagged_users
  has_one_attached :mediafile

  validates :caption, presence: true
end
