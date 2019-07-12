class AddHadlunchToLunches < ActiveRecord::Migration[5.2]
  def change
    add_column :lunches, :hadlunch, :boolean
  end
end
