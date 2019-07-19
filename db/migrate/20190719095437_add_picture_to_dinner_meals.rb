class AddPictureToDinnerMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :dinner_meals, :picture, :string
  end
end
