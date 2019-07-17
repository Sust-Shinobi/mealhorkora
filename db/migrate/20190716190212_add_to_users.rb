class AddToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :city, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :address, :text
    add_column :users, :profession, :string
    add_column :users, :phone_no, :string
    add_column :users, :religion, :string
  end
end
