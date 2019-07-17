class Dinner < ApplicationRecord
  belongs_to :user
  belongs_to :dinner_meal
end
