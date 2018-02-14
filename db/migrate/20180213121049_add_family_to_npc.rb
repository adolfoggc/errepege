class AddFamilyToNpc < ActiveRecord::Migration[5.1]
  def change
    add_column :npcs, :family, :string
  end
end
