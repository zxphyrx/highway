class Project < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy

  def github_slug
    return unless github_repo
    segments = github_repo.split("/")
    segments.last(2).join("/")
  end
end
