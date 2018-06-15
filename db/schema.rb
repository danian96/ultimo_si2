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

ActiveRecord::Schema.define(version: 2018_06_14_220432) do

  create_table "anuncios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "titulo"
    t.string "estado"
    t.string "descripcion"
    t.bigint "departamento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_anuncios_on_departamento_id"
  end

  create_table "asig_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "stock_id"
    t.bigint "asig_stock_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asig_stock_id"], name: "index_asig_details_on_asig_stock_id"
    t.index ["stock_id"], name: "index_asig_details_on_stock_id"
  end

  create_table "asig_stocks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "asig_date"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_asig_stocks_on_user_id"
  end

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

  create_table "convocatories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "titulo"
    t.string "descripcion"
    t.date "fecha_ini"
    t.date "fecha_fin"
    t.integer "cantidad_vacantes"
    t.string "estado"
    t.bigint "detalle_aplicacion_id"
    t.bigint "designacion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["designacion_id"], name: "index_convocatories_on_designacion_id"
    t.index ["detalle_aplicacion_id"], name: "index_convocatories_on_detalle_aplicacion_id"
  end

  create_table "departamentos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "designacions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.bigint "departamento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departamento_id"], name: "index_designacions_on_departamento_id"
    t.index ["user_id"], name: "index_designacions_on_user_id"
  end

  create_table "detalle_aplicacions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "estado"
    t.date "fecha"
    t.bigint "people_id"
    t.bigint "evaluacion_psicologica_id"
    t.bigint "evaluacion_tecnica_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluacion_psicologica_id"], name: "index_detalle_aplicacions_on_evaluacion_psicologica_id"
    t.index ["evaluacion_tecnica_id"], name: "index_detalle_aplicacions_on_evaluacion_tecnica_id"
    t.index ["people_id"], name: "index_detalle_aplicacions_on_people_id"
  end

  create_table "evaluacion_psicologicas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "observaciones"
    t.string "recomendaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluacion_tecnicas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "observacion"
    t.string "calificacion"
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

  create_table "stock_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "item_name"
    t.integer "quantity"
    t.date "buying_date"
    t.bigint "stock_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stock_category_id"], name: "index_stocks_on_stock_category_id"
  end

  create_table "traning_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "status"
    t.bigint "traning_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["traning_id"], name: "index_traning_users_on_traning_id"
    t.index ["user_id"], name: "index_traning_users_on_user_id"
  end

  create_table "tranings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.date "init_date"
    t.date "end_date"
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

  add_foreign_key "anuncios", "departamentos", on_update: :cascade, on_delete: :cascade
  add_foreign_key "asig_details", "asig_stocks", on_update: :cascade, on_delete: :cascade
  add_foreign_key "asig_details", "stocks", on_update: :cascade, on_delete: :cascade
  add_foreign_key "asig_stocks", "users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "assistances", "people", column: "people_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "convocatories", "designacions", on_update: :cascade, on_delete: :cascade
  add_foreign_key "convocatories", "detalle_aplicacions", on_update: :cascade, on_delete: :cascade
  add_foreign_key "designacions", "departamentos", on_update: :cascade, on_delete: :cascade
  add_foreign_key "designacions", "users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "detalle_aplicacions", "evaluacion_psicologicas", on_update: :cascade, on_delete: :cascade
  add_foreign_key "detalle_aplicacions", "evaluacion_tecnicas", on_update: :cascade, on_delete: :cascade
  add_foreign_key "detalle_aplicacions", "people", column: "people_id", on_update: :cascade, on_delete: :cascade
  add_foreign_key "memorandums", "memorandum_types", on_update: :cascade, on_delete: :cascade
  add_foreign_key "memorandums", "users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "people", "civil_states", on_update: :cascade, on_delete: :cascade
  add_foreign_key "people", "users", on_delete: :cascade
  add_foreign_key "person_professions", "grade_academics", on_update: :cascade, on_delete: :cascade
  add_foreign_key "person_professions", "people", on_update: :cascade, on_delete: :cascade
  add_foreign_key "person_professions", "professions", on_update: :cascade, on_delete: :cascade
  add_foreign_key "person_skills", "people", on_update: :cascade, on_delete: :cascade
  add_foreign_key "person_skills", "skills", on_update: :cascade, on_delete: :cascade
  add_foreign_key "stocks", "stock_categories", on_update: :cascade, on_delete: :cascade
  add_foreign_key "traning_users", "tranings", on_update: :cascade, on_delete: :cascade
  add_foreign_key "traning_users", "users", on_update: :cascade, on_delete: :cascade
end
