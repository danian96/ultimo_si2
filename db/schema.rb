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

  add_foreign_key "anuncios", "departamentos"
  add_foreign_key "assistances", "people", column: "people_id"
  add_foreign_key "convocatories", "designacions"
  add_foreign_key "convocatories", "detalle_aplicacions"
  add_foreign_key "designacions", "departamentos"
  add_foreign_key "designacions", "users"
  add_foreign_key "detalle_aplicacions", "evaluacion_psicologicas"
  add_foreign_key "detalle_aplicacions", "evaluacion_tecnicas"
  add_foreign_key "detalle_aplicacions", "people", column: "people_id"
  add_foreign_key "memorandums", "memorandum_types"
  add_foreign_key "memorandums", "users"
  add_foreign_key "people", "civil_states"
  add_foreign_key "people", "users"
end
