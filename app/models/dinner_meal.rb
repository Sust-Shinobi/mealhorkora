class DinnerMeal < ApplicationRecord
  has_many :dinner
  mount_uploader :picture, PictureUploader

  validates :items, presence: true
  validates :cost, presence: true

end
