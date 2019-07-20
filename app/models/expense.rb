class Expense < ApplicationRecord

  validates :item, presence: true
  validates :cost, presence: true
  validates :year, presence: true
  validates :month, presence: true
  validates :day, presence: true

end
