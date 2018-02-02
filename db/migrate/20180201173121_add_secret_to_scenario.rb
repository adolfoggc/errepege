class AddSecretToScenario < ActiveRecord::Migration[5.1]
  def change
    add_column :scenarios, :secret, :text
  end
end
