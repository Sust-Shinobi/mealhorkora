class LunchMeal < ApplicationRecord
  has_many :lunch
  mount_uploader :picture, PictureUploader
end
