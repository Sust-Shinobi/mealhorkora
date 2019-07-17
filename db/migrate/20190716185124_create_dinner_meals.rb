class CreateDinnerMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :dinner_meals do |t|
      t.string :items
      t.float :cost

      t.timestamps
    end
  end
end
