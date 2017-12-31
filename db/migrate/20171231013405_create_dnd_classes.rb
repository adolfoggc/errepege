class CreateDndClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :dnd_classes do |t|
      t.string :name
      t.text :description
      t.integer :hit_die
      t.integer :skill_points

      t.timestamps
    end
  end
end
