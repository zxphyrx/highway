class User < ApplicationRecord

  validates :email, uniqueness: true, presence: true, allow_nil: false
  
  has_many :posts, dependent: :destroy
end
