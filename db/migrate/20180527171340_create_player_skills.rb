class CreatePlayerSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :player_skills do |t|
      t.references :skill, foreign_key: true
      t.integer :graduation
      t.integer :special
      t.integer :learning

      t.timestamps
    end
  end
end
