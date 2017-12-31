class CreateDndClassesSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :dnd_classes_skills do |t|
      t.references :dnd_class, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
