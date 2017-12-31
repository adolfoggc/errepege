json.extract! dnd_class, :id, :name, :description, :hit_die, :skill_points, :created_at, :updated_at
json.url dnd_class_url(dnd_class, format: :json)
