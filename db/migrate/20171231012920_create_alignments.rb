class CreateAlignments < ActiveRecord::Migration[5.1]
  def change
    create_table :alignments do |t|
      t.string :kind

      t.timestamps
    end
  end
end
