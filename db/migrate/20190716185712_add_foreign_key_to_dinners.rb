class AddForeignKeyToDinners < ActiveRecord::Migration[5.2]
  def change
    add_reference :dinners, :dinner_meal, foreign_key: true
  end
end
