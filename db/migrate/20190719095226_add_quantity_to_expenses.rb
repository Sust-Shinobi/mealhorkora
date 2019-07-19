class AddQuantityToExpenses < ActiveRecord::Migration[5.2]
  def change
    add_column :expenses, :quantity, :string
  end
end
