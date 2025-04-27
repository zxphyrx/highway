class Post < ApplicationRecord
  has_one_attached :featured_image
  has_rich_text :description
  validates :description, presence: true
  validates :name, presence: true
  validates :hours, presence: true
end
