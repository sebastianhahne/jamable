class Genre < ApplicationRecord


  has_many :user_genres
  has_many :users, through: :user_genres
  validates :name, presence: true
end
