class LunchMeal < ApplicationRecord
  has_many :lunch
  mount_uploader :picture, PictureUploader

  validates :items, presence: true
  validates :cost, presence: true
end
