class AddHaddinnerToDinners < ActiveRecord::Migration[5.2]
  def change
    add_column :dinners, :haddinner, :boolean
  end
end
