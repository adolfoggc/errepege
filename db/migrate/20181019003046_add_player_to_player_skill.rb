class AddPlayerToPlayerSkill < ActiveRecord::Migration[5.1]
  def change
    add_reference :player_skills, :player, foreign_key: true
  end
end
