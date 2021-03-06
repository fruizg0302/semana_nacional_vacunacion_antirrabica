# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150423172921) do

  create_table "eight_annexes", force: true do |t|
    t.integer  "perros_estimados"
    t.integer  "gatos_estimados"
    t.integer  "total_estimados"
    t.integer  "perros_por_vacunar"
    t.integer  "gatos_por_vacunar"
    t.integer  "total_por_vacunar"
    t.integer  "perros_vsn"
    t.integer  "gatos_vsn"
    t.integer  "total_vsn"
    t.integer  "brigadas_dia"
    t.integer  "puestos_fijos"
    t.integer  "numero_de_dias"
    t.integer  "jurisdiction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eleven_annexes", force: true do |t|
    t.integer  "numero_frascos"
    t.integer  "numero_dosis"
    t.integer  "placas"
    t.integer  "chinchos"
    t.integer  "comprobantes_cartillas"
    t.integer  "agujas"
    t.integer  "jeringas"
    t.integer  "thermos"
    t.integer  "jurisdiction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fifteen_annexes", force: true do |t|
    t.integer  "numero_municipios"
    t.integer  "localidades_trabajadas"
    t.integer  "logros_perros"
    t.integer  "logros_gatos"
    t.integer  "logros_total"
    t.integer  "jurisdiction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formularies", force: true do |t|
    t.string   "description"
    t.boolean  "enabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fourteen_annexes", force: true do |t|
    t.integer  "numero_municipios"
    t.integer  "localidades_trabajadas"
    t.integer  "logros_perros"
    t.integer  "logros_gatos"
    t.integer  "logros_total"
    t.integer  "porcentaje_cumplimiento"
    t.integer  "puestos"
    t.integer  "brigadas"
    t.integer  "personas_sesa"
    t.integer  "personas_edo_mpio"
    t.integer  "personas_sagarpa"
    t.integer  "personas_escuelas_vet_pec"
    t.integer  "personas_gpos"
    t.integer  "personas_voluntarios"
    t.integer  "personas_imss_prospera"
    t.integer  "personas_total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "otros"
    t.integer  "jurisdiction_id"
  end

  create_table "jurisdictions", force: true do |t|
    t.string   "jurisdiction_name"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nine_annexes", force: true do |t|
    t.integer  "numero_municipios"
    t.integer  "numero_municipios_imss_prospera"
    t.integer  "universo_perros_imss_prospera"
    t.integer  "universo_gatos_imss_prospera"
    t.integer  "universo_total_imss_prospera"
    t.integer  "perros_vacunar_imss_prospera"
    t.integer  "gatos_vacunar_imss_prospera"
    t.integer  "total_vacunar_imss_prospera"
    t.integer  "jurisdiction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sixteen_annexes", force: true do |t|
    t.integer  "numero_carteles"
    t.integer  "numero_volantes"
    t.integer  "numero_folletos"
    t.integer  "numero_tripticos"
    t.integer  "spots_radio"
    t.integer  "spots_tv"
    t.integer  "numero_entrevistas"
    t.integer  "numero_platicas"
    t.integer  "hrs_perifoneo"
    t.integer  "cunas_periodisticas"
    t.integer  "pinta_bardas"
    t.integer  "mantas"
    t.integer  "jurisdiction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "state_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "imss_prospera"
  end

  create_table "sterilizations", force: true do |t|
    t.string   "municipality"
    t.date     "surgery_date"
    t.integer  "species_id"
    t.integer  "genre_id"
    t.integer  "age_group_id"
    t.boolean  "vaccine"
    t.integer  "establishment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ten_annexes", force: true do |t|
    t.integer  "sesa_personas"
    t.integer  "estados_municipios_personas"
    t.integer  "sedena_semar"
    t.integer  "sagarpa_personas"
    t.integer  "escuelas_veterinarias_personas"
    t.integer  "grupos_comunidad_personas"
    t.integer  "voluntarios_personas"
    t.integer  "otros_personas"
    t.integer  "imss_prospera_personas"
    t.integer  "total_personas"
    t.integer  "jurisdiction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thirteen_annexes", force: true do |t|
    t.integer  "numero_cds_dist"
    t.integer  "numero_cd_perifoneo_dist"
    t.integer  "numero_carteles_dist"
    t.integer  "numero_cds_local"
    t.integer  "numero_cd_perifoneo_local"
    t.integer  "numero_carteles_local"
    t.integer  "numero_estaciones_am"
    t.integer  "numero_estaciones_fm"
    t.integer  "total_estaciones"
    t.integer  "promedio_impactos_dia"
    t.date     "fecha_inicio_difusion"
    t.date     "fecha_termino_difusion"
    t.integer  "promedio_dias_difusion"
    t.integer  "equipo_perifoneo_oficial"
    t.integer  "equipo_perifoneo_privado"
    t.integer  "equipo_perifoneo_total"
    t.integer  "promedio_horas_difusion"
    t.date     "fecha_inicio_difusion_perifoneo_local"
    t.date     "fecha_termino_difusion_perifoneo_local"
    t.integer  "promedio_dias_perifoneo"
    t.integer  "jurisdiction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "twelve_annexes", force: true do |t|
    t.integer  "difusion_acumulado_total"
    t.integer  "carteles"
    t.integer  "volantes"
    t.integer  "folletos"
    t.integer  "tripticos"
    t.integer  "spots_tv"
    t.integer  "spots_radio"
    t.integer  "entrevistas_tv"
    t.integer  "entrevistas_radio"
    t.integer  "platicas"
    t.integer  "horas_perifoneo"
    t.integer  "cunas_periodisticas"
    t.integer  "pinta_bardas"
    t.integer  "mantas"
    t.integer  "jurisdiction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
