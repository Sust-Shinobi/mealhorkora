class AddReligionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :religion, :string
  end
end
