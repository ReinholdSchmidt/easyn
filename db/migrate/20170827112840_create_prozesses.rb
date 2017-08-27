class CreateProzesses < ActiveRecord::Migration[5.0]
  def change
    create_table :prozesses do |t|
      t.string :title
      t.text :description
      t.boolean :istprozess
      t.boolean :abletoviernull
      t.boolean :bestsolution
      t.references :istproz, foreign_key: true

      t.timestamps
    end
  end
end
