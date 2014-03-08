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

ActiveRecord::Schema.define(version: 20140304101045) do

  create_table "agences", force: true do |t|
    t.string   "raison_sociale"
    t.string   "responsable"
    t.string   "telephone"
    t.string   "progouinon"
    t.string   "rappelouinon"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "adresse"
    t.string   "cp"
    t.datetime "rappel"
  end

  create_table "bienvenues", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groupes", force: true do |t|
    t.string   "nom"
    t.string   "num_rue"
    t.string   "type_voie"
    t.string   "adresse"
    t.string   "cp"
    t.string   "ville"
    t.string   "tel"
    t.string   "fax"
    t.string   "email"
    t.string   "contact_civilite"
    t.string   "contact_prenom"
    t.string   "contact_nom"
    t.string   "siret"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programmes", force: true do |t|
    t.string   "nom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "utilisateurs", force: true do |t|
    t.string   "nom"
    t.string   "mdp"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "utilisateurs", ["email"], name: "index_utilisateurs_on_email", unique: true
  add_index "utilisateurs", ["reset_password_token"], name: "index_utilisateurs_on_reset_password_token", unique: true

end
