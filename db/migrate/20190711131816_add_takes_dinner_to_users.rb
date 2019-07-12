class AddTakesDinnerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :takes_dinner, :boolean
  end
end
