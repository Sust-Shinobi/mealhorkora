class DinnerMeal < ApplicationRecord
  has_many :dinner
  mount_uploader :picture, PictureUploader
end
