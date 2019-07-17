class Lunch < ApplicationRecord
  belongs_to :user
  belongs_to :lunch_meal
end
