class RemoveHadmealFromDinners < ActiveRecord::Migration[5.2]
  def change
    remove_column :dinners, :hadmeal, :boolean
  end
end
