class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.integer :related_ability
      t.integer :graduation
      t.boolean :trained , default: false
      t.boolean :dex_penalty, default: false
      t.boolean :weight_penalty, default: false

      t.timestamps
    end
  end
end
