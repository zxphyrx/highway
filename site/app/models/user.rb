class User < ApplicationRecord

  validates :email, uniqueness: true, presence: true, allow_nil: false
  

end
