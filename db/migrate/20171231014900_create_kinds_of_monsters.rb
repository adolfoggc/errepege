class CreateKindsOfMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :kinds_of_monsters do |t|
      t.string :kind

      t.timestamps
    end
  end
end
