# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180527173727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alignments", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dnd_classes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "hit_die"
    t.integer "skill_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dnd_classes_skills", force: :cascade do |t|
    t.bigint "dnd_class_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dnd_class_id"], name: "index_dnd_classes_skills_on_dnd_class_id"
    t.index ["skill_id"], name: "index_dnd_classes_skills_on_skill_id"
  end

  create_table "environments", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "female_human_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kinds_of_monsters", force: :cascade do |t|
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "secret_text"
    t.bigint "scenario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scenario_id"], name: "index_locations_on_scenario_id"
  end

  create_table "male_human_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.bigint "environment_id"
    t.integer "dc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["environment_id"], name: "index_monsters_on_environment_id"
  end

  create_table "npcs", force: :cascade do |t|
    t.string "name"
    t.bigint "race_id"
    t.text "background"
    t.string "description"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id"
    t.string "age_range"
    t.text "secret"
    t.string "family"
    t.index ["race_id"], name: "index_npcs_on_race_id"
    t.index ["role_id"], name: "index_npcs_on_role_id"
  end

  create_table "player_skills", force: :cascade do |t|
    t.bigint "skill_id"
    t.integer "graduation"
    t.integer "special"
    t.integer "learning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_player_skills_on_skill_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.bigint "race_id"
    t.integer "age"
    t.string "gender"
    t.bigint "dnd_class_id"
    t.integer "str", default: 8
    t.integer "dex", default: 8
    t.integer "con", default: 8
    t.integer "intel", default: 8
    t.integer "wis", default: 8
    t.integer "cha", default: 8
    t.integer "hit_points"
    t.bigint "alignment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alignment_id"], name: "index_players_on_alignment_id"
    t.index ["dnd_class_id"], name: "index_players_on_dnd_class_id"
    t.index ["race_id"], name: "index_players_on_race_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.integer "child"
    t.integer "teen"
    t.integer "adult"
    t.integer "ancient"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scenarios", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.text "secret"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "related_ability"
    t.integer "graduation"
    t.boolean "trained", default: false
    t.boolean "dex_penalty", default: false
    t.boolean "weight_penalty", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dnd_classes_skills", "dnd_classes"
  add_foreign_key "dnd_classes_skills", "skills"
  add_foreign_key "monsters", "environments"
  add_foreign_key "npcs", "races"
  add_foreign_key "npcs", "roles"
  add_foreign_key "player_skills", "skills"
  add_foreign_key "players", "alignments"
  add_foreign_key "players", "dnd_classes"
  add_foreign_key "players", "races"
end
