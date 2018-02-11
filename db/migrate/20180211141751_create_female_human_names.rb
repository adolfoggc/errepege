class CreateFemaleHumanNames < ActiveRecord::Migration[5.1]
  def change
    create_table :female_human_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
