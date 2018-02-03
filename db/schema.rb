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

ActiveRecord::Schema.define(version: 20180201173121) do

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
    t.index ["race_id"], name: "index_npcs_on_race_id"
    t.index ["role_id"], name: "index_npcs_on_role_id"
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

  add_foreign_key "dnd_classes_skills", "dnd_classes"
  add_foreign_key "dnd_classes_skills", "skills"
  add_foreign_key "monsters", "environments"
  add_foreign_key "npcs", "races"
  add_foreign_key "npcs", "roles"
end
