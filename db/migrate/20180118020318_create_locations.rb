class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.text :secret_text

      t.belongs_to :scenario, index: true

      t.timestamps
    end
  end
end
