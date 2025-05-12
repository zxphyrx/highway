class Prize < ApplicationRecord
  has_one_attached :image  # Stores prize images
  has_many :user_prizes
  has_many :users, through: :user_prizes
end
