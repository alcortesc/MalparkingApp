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

ActiveRecord::Schema.define(version: 20180929150646) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authenticates", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "register_id"
    t.datetime "fecha_hora"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["register_id"], name: "index_authenticates_on_register_id", using: :btree
    t.index ["user_id"], name: "index_authenticates_on_user_id", using: :btree
  end

  create_table "entries", force: :cascade do |t|
    t.string   "contrasenia"
    t.datetime "fecha_hora_ingreso"
    t.datetime "fecha_hora_salida"
    t.integer  "cantidad_ingresos"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "evidences", force: :cascade do |t|
    t.string   "nombre_evidencia"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string   "entidad_notificada"
    t.string   "elemento_notificado"
    t.string   "estado_notificacion"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "registers", force: :cascade do |t|
    t.integer  "evidence_id"
    t.integer  "vehicle_id"
    t.integer  "user_id"
    t.integer  "report_id"
    t.datetime "fecha_hora"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["evidence_id"], name: "index_registers_on_evidence_id", using: :btree
    t.index ["report_id"], name: "index_registers_on_report_id", using: :btree
    t.index ["user_id"], name: "index_registers_on_user_id", using: :btree
    t.index ["vehicle_id"], name: "index_registers_on_vehicle_id", using: :btree
  end

  create_table "reports", force: :cascade do |t|
    t.string   "descripcion_denuncia"
    t.string   "tipo_denuncia"
    t.string   "direccion_denuncia"
    t.string   "envio_notificacion"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "sends", force: :cascade do |t|
    t.integer  "notification_id"
    t.integer  "report_id"
    t.datetime "fecha_hora"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["notification_id"], name: "index_sends_on_notification_id", using: :btree
    t.index ["report_id"], name: "index_sends_on_report_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "tipo_documento"
    t.string   "numero_documento"
    t.string   "ciudad"
    t.string   "correo_electronico"
    t.string   "genero"
    t.integer  "celular"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "tipo_vehiculo"
    t.string   "placa"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "authenticates", "registers"
  add_foreign_key "authenticates", "users"
  add_foreign_key "registers", "evidences"
  add_foreign_key "registers", "reports"
  add_foreign_key "registers", "users"
  add_foreign_key "registers", "vehicles"
  add_foreign_key "sends", "notifications"
  add_foreign_key "sends", "reports"
end
