class RemoveHadmealFromLunches < ActiveRecord::Migration[5.2]
  def change
    remove_column :lunches, :hadmeal, :boolean
  end
end
