class UserPrize < ApplicationRecord
  belongs_to :user
  belongs_to :prize

  scope :unclaimed, -> { where(claimed: false) }
  scope :claimed, -> { where(claimed: true) }

  def claim!
    update!(claimed: true, claimed_at: Time.current, tracking_number: generate_tracking_number)
  end

  private
  def generate_tracking_number
    "TN-#{SecureRandom.alphanumeric(10).upcase}"
  end
end