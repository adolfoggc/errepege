class AddColumnAgeRangeToNpc < ActiveRecord::Migration[5.1]
  def change
    add_column :npcs, :age_range, :string
  end
end
