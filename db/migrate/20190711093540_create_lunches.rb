class CreateLunches < ActiveRecord::Migration[5.2]
  def change
    create_table :lunches do |t|
      t.boolean :hadmeal
      t.decimal :year
      t.string :month
      t.decimal :day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
