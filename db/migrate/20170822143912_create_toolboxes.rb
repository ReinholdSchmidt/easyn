class CreateToolboxes < ActiveRecord::Migration[5.0]
  def change
    create_table :toolboxes do |t|
      t.string :title
      t.text :description
      t.string :kategorie
      t.string :gruppe

      t.timestamps
    end
  end
end
