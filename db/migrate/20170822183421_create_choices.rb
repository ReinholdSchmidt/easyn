class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.string :title
      t.text :description
      t.text :example
      t.integer :rating
      t.string :thumbnail
      t.string :image
      t.references :toolbox, foreign_key: true

      t.timestamps
    end
  end
end
