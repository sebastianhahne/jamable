class User < ApplicationRecord  
  include PgSearch
  pg_search_scope :global_search,
    against: [:username],
    associated_against: {
      instrument: [:name, 'A'] ,
      user_instrument: [:skill_level, 'A'],
      genre: [:name, 'B'],
      post: [:caption, 'C']

    }

  has_many :user_instruments, dependent: :destroy
  has_many :user_genres, dependent: :destroy
  has_many :messages
  has_many :chatrooms, through: :messages
  has_many :posts, dependent: :destroy
  has_one_attached :photo
  has_many :friendships_as_asker, source: :friendships, foreign_key: :asker_id
  has_many :friendships_as_receiver, source: :friendships, foreign_key: :receiver_id

  validates :username, presence: true, uniqueness: true
  validates :address, presence: true
  # Check devise validations
  validates :photo, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
