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

ActiveRecord::Schema.define(version: 2018_06_14_204834) do

  create_table "assistances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "day"
    t.date "date_of_assistance"
    t.time "init_time"
    t.time "final_time"
    t.bigint "people_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["people_id"], name: "index_assistances_on_people_id"
  end

  create_table "civil_states", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contract_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grade_academics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "institution"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memorandum_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memorandums", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "memorandum_type_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["memorandum_type_id"], name: "index_memorandums_on_memorandum_type_id"
    t.index ["user_id"], name: "index_memorandums_on_user_id"
  end

  create_table "pay_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.date "birthday"
    t.string "sex"
    t.integer "ci"
    t.text "address"
    t.integer "phone"
    t.bigint "civil_state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["civil_state_id"], name: "index_people_on_civil_state_id"
    t.index ["user_id"], name: "index_people_on_user_id"
  end

  create_table "permissions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "subject_class"
    t.string "action"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permissions_roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "permission_id"
    t.integer "role_id"
  end

  create_table "person_professions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "person_id"
    t.bigint "profession_id"
    t.bigint "grade_academic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_academic_id"], name: "index_person_professions_on_grade_academic_id"
    t.index ["person_id"], name: "index_person_professions_on_person_id"
    t.index ["profession_id"], name: "index_person_professions_on_profession_id"
  end

  create_table "person_skills", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "nivel"
    t.bigint "person_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_person_skills_on_person_id"
    t.index ["skill_id"], name: "index_person_skills_on_skill_id"
  end

  create_table "professions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "assistances", "people", column: "people_id"
  add_foreign_key "memorandums", "memorandum_types"
  add_foreign_key "memorandums", "users"
  add_foreign_key "people", "civil_states"
  add_foreign_key "people", "users"
  add_foreign_key "person_professions", "grade_academics"
  add_foreign_key "person_professions", "people"
  add_foreign_key "person_professions", "professions"
  add_foreign_key "person_skills", "people"
  add_foreign_key "person_skills", "skills"
end
