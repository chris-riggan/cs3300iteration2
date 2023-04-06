class CreateMtgCards < ActiveRecord::Migration[6.1]
  def change
    create_table :mtg_cards do |t|
      t.string :Name
      t.string :Set
      t.integer :Set_Number
      t.integer :Quantity

      t.timestamps
    end
  end
end
