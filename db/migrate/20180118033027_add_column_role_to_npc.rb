class AddColumnRoleToNpc < ActiveRecord::Migration[5.1]
  def change
    add_reference :npcs, :role, foreign_key: true
  end
end
