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

ActiveRecord::Schema.define(version: 20140312105710) do

  create_table "acquereurs", force: true do |t|
    t.string   "origine_rech"
    t.string   "civilite"
    t.string   "prenom"
    t.string   "nom"
    t.string   "num_rue"
    t.string   "type_rue"
    t.string   "adresse"
    t.string   "cp"
    t.string   "ville"
    t.string   "tel_princ"
    t.string   "tel_type"
    t.string   "email_princ"
    t.string   "email_type"
    t.string   "fax_princ"
    t.string   "r_cp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "codepostals", force: true do |t|
    t.string   "code"
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
  end

end
