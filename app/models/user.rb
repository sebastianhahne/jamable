class User < ApplicationRecord
  include PgSearch::Model

  # for geocoder
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :global_search, against: [:username],
  associated_against: {
    instruments: [:name],
    # user_instruments: [:skill_level],
    genres: [:name]
    # posts: [:caption]
  },
  using: {
    tsearch: {
      prefix: true,
      dictionary: "english"
    },
    trigram: {
    }
  }

  has_many :user_instruments, dependent: :destroy
  has_many :instruments, through: :user_instruments
  has_many :user_genres, dependent: :destroy
  has_many :genres, through: :user_genres
  has_many :messages
  has_many :conversations
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

  # social gem
  acts_as_follower
  acts_as_followable
  acts_as_liker
  acts_as_likeable
  acts_as_mentionable
end
