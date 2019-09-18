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

ActiveRecord::Schema.define(version: 2019_09_18_234359) do

  create_table "plasmids", force: :cascade do |t|
    t.string "name"
    t.string "source"
    t.string "method"
    t.string "reference"
    t.string "sequence_validated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "primers", force: :cascade do |t|
    t.string "name"
    t.text "sequence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strains", force: :cascade do |t|
    t.string "accession"
    t.text "common_name"
    t.text "strain_background"
    t.text "general_info"
    t.text "source"
    t.text "keywords"
    t.text "genotype"
    t.text "phenotype"
    t.text "ploidy"
    t.text "reference"
    t.text "sequence_validated"
    t.text "method"
    t.text "Mutant_source_DNA"
    t.text "upstream_check_primers"
    t.text "downstream_check_primers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
