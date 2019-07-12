class CreateDinners < ActiveRecord::Migration[5.2]
  def change
    create_table :dinners do |t|
      t.boolean :hadmeal
      t.decimal :year
      t.string :month
      t.decimal :day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
