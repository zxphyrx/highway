class User < ApplicationRecord

  validates :email, uniqueness: true, presence: true, allow_nil: false
  
  has_many :posts, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :user_prizes, dependent: :destroy
  has_many :prizes, through: :user_prizes

  def name
    "#{first_name} #{last_name}"
  end
  
  def prize_box
    user_prizes.where(claimed: false)
  end
end
