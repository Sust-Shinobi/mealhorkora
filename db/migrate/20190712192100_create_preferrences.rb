class CreatePreferrences < ActiveRecord::Migration[5.2]
  def change
    create_table :preferrences do |t|
      t.string :disliked_item
      t.referrences :user

      t.timestamps
    end
  end
end
