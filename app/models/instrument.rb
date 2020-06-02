class Instrument < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :skill_level, inclusion: { in: ['Beginner', 'Intermediate', 'Expert']}
end
