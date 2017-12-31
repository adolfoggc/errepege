class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.integer :related_ability
      t.integer :graduation
      t.boolean :trained
      t.boolean :dex_penalty
      t.boolean :weight_penalty

      t.timestamps
    end
  end
end
