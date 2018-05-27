json.extract! player, :id, :name, :race_id, :age, :gender, :dnd_class_id, :str, :dex, :con, :intel, :wis, :cha, :hit_points, :alignment_id, :created_at, :updated_at
json.url player_url(player, format: :json)
