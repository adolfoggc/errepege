class AddAppearedToNpc < ActiveRecord::Migration[5.1]
  def change
    add_column :npcs, :appeared, :boolean, default: false
  end
end
