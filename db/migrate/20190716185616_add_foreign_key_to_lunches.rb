class AddForeignKeyToLunches < ActiveRecord::Migration[5.2]
  def change
    add_reference :lunches, :lunch_meal, foreign_key: true
  end
end
