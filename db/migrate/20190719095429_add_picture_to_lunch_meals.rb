class AddPictureToLunchMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :lunch_meals, :picture, :string
  end
end
