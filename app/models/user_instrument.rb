class UserInstrument < ApplicationRecord
  SKILL_LEVELS = ['Beginner', 'Intermediate', 'Expert']
  belongs_to :instrument
  belongs_to :user

  validates :skill_level, inclusion: { in: SKILL_LEVELS }
  accepts_nested_attributes_for :instrument
end
