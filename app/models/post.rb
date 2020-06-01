class Post < ApplicationRecord
  belongs_to :user
  belongs_to :tagged_user
end
