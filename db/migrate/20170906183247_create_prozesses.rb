class CreateProzesses < ActiveRecord::Migration[5.0]
  def change
    create_table :prozesses do |t|
      t.string   :title
      t.text     :description
      t.boolean  :abletoviernull
      t.boolean  :bestsolution
      t.string   :department
      t.boolean   :istprozess
      t.references  :istproz
      t.timestamps
    end
  end
end
