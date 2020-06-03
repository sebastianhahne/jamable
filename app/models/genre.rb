class Genre < ApplicationRecord
  has_many :user_genres
  has_many :user, through: :user_genres
  validates :name, presence: true
end
