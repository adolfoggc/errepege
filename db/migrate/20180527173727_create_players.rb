class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.references :race, foreign_key: true
      t.integer :age
      t.string :gender
      t.references :dnd_class, foreign_key: true
      t.integer :str, :default => 8
      t.integer :dex, :default => 8
      t.integer :con, :default => 8
      t.integer :intel, :default => 8
      t.integer :wis, :default => 8
      t.integer :cha, :default => 8
      t.integer :hit_points
      t.references :alignment, foreign_key: true

      t.timestamps
    end
  end
end
