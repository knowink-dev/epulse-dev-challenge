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

ActiveRecord::Schema.define(version: 2021_10_11_222607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "election_candidate_enrollments", force: :cascade do |t|
    t.bigint "election_id", null: false
    t.bigint "election_candidate_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["election_candidate_id"], name: "index_election_candidate_enrollments_on_election_candidate_id"
    t.index ["election_id"], name: "index_election_candidate_enrollments_on_election_id"
  end

  create_table "election_candidates", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "party"
    t.string "occupation"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "phone_number"
    t.integer "gender"
    t.bigint "election_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["election_id"], name: "index_election_candidates_on_election_id"
  end

  create_table "election_voters", force: :cascade do |t|
    t.bigint "election_id", null: false
    t.bigint "voter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["election_id"], name: "index_election_voters_on_election_id"
    t.index ["voter_id"], name: "index_election_voters_on_voter_id"
  end

  create_table "elections", force: :cascade do |t|
    t.string "election_title"
    t.string "state"
    t.string "city"
    t.date "election_date"
    t.integer "election_type", default: 0
    t.string "supervisor_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "precinct_id"
  end

  create_table "poll_workers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "job_title"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "precinct_pollsters", force: :cascade do |t|
    t.bigint "precinct_id", null: false
    t.bigint "poll_worker_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["poll_worker_id"], name: "index_precinct_pollsters_on_poll_worker_id"
    t.index ["precinct_id"], name: "index_precinct_pollsters_on_precinct_id"
  end

  create_table "precincts", force: :cascade do |t|
    t.string "name"
    t.string "voter_tabulation_distrinct"
    t.string "congressional_district"
    t.string "state_senate"
    t.string "state_house"
    t.string "superior_court"
    t.string "judicial_name"
    t.string "prosecutorial_name"
    t.string "municipality_name"
    t.string "township_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "voter_tabulation_district"
  end

  create_table "voter_precincts", force: :cascade do |t|
    t.bigint "voter_id", null: false
    t.bigint "precinct_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["precinct_id"], name: "index_voter_precincts_on_precinct_id"
    t.index ["voter_id"], name: "index_voter_precincts_on_voter_id"
  end

  create_table "voters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "phone_number"
    t.string "party_affiliation"
    t.boolean "provisional", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "last_4_digits_ssn"
  end

  create_table "votes", force: :cascade do |t|
    t.bigint "voter_id", null: false
    t.bigint "election_candidate_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "election_id"
    t.index ["election_candidate_id"], name: "index_votes_on_election_candidate_id"
    t.index ["voter_id"], name: "index_votes_on_voter_id"
  end

  add_foreign_key "election_candidate_enrollments", "election_candidates"
  add_foreign_key "election_candidate_enrollments", "elections"
  add_foreign_key "election_candidates", "elections"
  add_foreign_key "election_voters", "elections"
  add_foreign_key "election_voters", "voters"
  add_foreign_key "precinct_pollsters", "poll_workers"
  add_foreign_key "precinct_pollsters", "precincts"
  add_foreign_key "voter_precincts", "precincts"
  add_foreign_key "voter_precincts", "voters"
  add_foreign_key "votes", "election_candidates"
  add_foreign_key "votes", "voters"
end
