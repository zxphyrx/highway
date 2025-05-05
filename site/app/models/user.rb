class User < ApplicationRecord

  validates :email, uniqueness: true, presence: true, allow_nil: false
  
  has_many :posts, dependent: :destroy

  has_many :projects, dependent: :destroy

  def name
    "#{first_name} #{last_name}"
  end
end
