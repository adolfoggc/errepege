class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.references :environment, foreign_key: true
      t.integer :dc

      t.timestamps
    end
  end
end
