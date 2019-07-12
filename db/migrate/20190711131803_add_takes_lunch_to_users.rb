class AddTakesLunchToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :takes_lunch, :boolean
  end
end
