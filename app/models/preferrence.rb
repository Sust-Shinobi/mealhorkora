class Preferrence < ApplicationRecord
  belongs_to :user
  validates :disliked_item, presence: true
end
