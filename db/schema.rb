# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2026_02_13_220238) do
  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "lat"
    t.string "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companyhasjobs", force: :cascade do |t|
    t.integer "company_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contrats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "debut"
    t.string "fin"
    t.string "company"
    t.string "lieu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formations", force: :cascade do |t|
    t.integer "user_id"
    t.string "ecole"
    t.string "diplome"
    t.string "lieu"
    t.string "debut"
    t.string "fin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interimagencehasjobs", force: :cascade do |t|
    t.integer "interimagence_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interimagences", force: :cascade do |t|
    t.string "name"
    t.string "lat"
    t.string "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobfamilies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "secteur_id"
    t.integer "contrat_id"
    t.integer "jobfamily_id"
    t.string "lieu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "datefin"
  end

  create_table "plateformedemploihasjobs", force: :cascade do |t|
    t.integer "plateformedemploi_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plateformedemplois", force: :cascade do |t|
    t.string "name"
    t.string "lat"
    t.string "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publiqueinstitutionhasjobs", force: :cascade do |t|
    t.integer "publiqueinstitution_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publiqueinstitutions", force: :cascade do |t|
    t.string "name"
    t.string "lat"
    t.string "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "secteurs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "softskills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userhassoftskills", force: :cascade do |t|
    t.integer "user_id"
    t.integer "softskill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "country_id"
    t.string "phone"
    t.string "name"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
end
