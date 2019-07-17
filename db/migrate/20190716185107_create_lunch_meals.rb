class CreateLunchMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :lunch_meals do |t|
      t.string :items
      t.float :cost

      t.timestamps
    end
  end
end
