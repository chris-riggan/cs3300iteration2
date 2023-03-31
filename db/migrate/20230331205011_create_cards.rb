class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :Name
      t.text :Effect
      t.string :Set
      t.integer :set_number

      t.timestamps
    end
  end
end
