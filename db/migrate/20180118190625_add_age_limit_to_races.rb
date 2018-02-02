class AddAgeLimitToRaces < ActiveRecord::Migration[5.1]
  def change
    add_column :races, :child, :integer
    add_column :races, :teen, :integer
    add_column :races, :adult, :integer
    add_column :races, :ancient, :integer
  end
end
