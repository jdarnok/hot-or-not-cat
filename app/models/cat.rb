class Cat < ApplicationRecord

  mount_uploader :image, ImageUploader
  scope :already_voted, -> (user_id) { includes(:votes).where(votes: {user_id: user_id}) }
  has_many :votes
end
