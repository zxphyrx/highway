class Post < ApplicationRecord
  has_one_attached :featured_image
  has_rich_text :description
  belongs_to :user
  belongs_to :project
  validates :description, presence: true
  validates :name, presence: true
  validates :hours, presence: true, numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 0 }
  validates :featured_image, presence: true
end
