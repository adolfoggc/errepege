class CreateNpcs < ActiveRecord::Migration[5.1]
  def change
    create_table :npcs do |t|
      t.string :name
      t.references :race, foreign_key: true
      t.text :background
      t.string :description
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
