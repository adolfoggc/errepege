class AddSecretToNpc < ActiveRecord::Migration[5.1]
  def change
    add_column :npcs, :secret, :text
  end
end
