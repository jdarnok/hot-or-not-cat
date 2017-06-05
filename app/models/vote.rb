class Vote < ApplicationRecord
  belongs_to :cat
  belongs_to :user

  before_save :update_rating

  private

  def update_rating
    cat.rating += rating
    cat.save
  end
end
