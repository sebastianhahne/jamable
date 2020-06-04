class UserGenre < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  accepts_nested_attributes_for :genre
end
