class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.integer :year
      t.string :month
      t.decimal :day
      t.string :item
      t.decimal :cost

      t.timestamps
    end
  end
end
