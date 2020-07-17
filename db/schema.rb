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

ActiveRecord::Schema.define(version: 2020_06_24_165038) do

  create_table "emr_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.boolean "retired", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_user_maps", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.boolean "assigned", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "location_id"
    t.index ["location_id"], name: "index_location_user_maps_on_location_id"
    t.index ["user_id"], name: "index_location_user_maps_on_user_id"
  end

  create_table "locations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "latitude"
    t.string "longitude"
    t.integer "parent_location"
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "emr_type_id"
    t.index ["emr_type_id"], name: "index_locations_on_emr_type_id"
  end

  create_table "person_bios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "report_id"
    t.bigint "person_bio_id"
    t.index ["person_bio_id"], name: "index_recipients_on_person_bio_id"
    t.index ["report_id"], name: "index_recipients_on_report_id"
  end

  create_table "report_indicators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "report_id"
    t.index ["report_id"], name: "index_report_indicators_on_report_id"
  end

  create_table "report_submissions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.time "time"
    t.datetime "date_submitted"
    t.datetime "date_ended"
    t.boolean "retired", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "report_id"
    t.bigint "location_id"
    t.index ["location_id"], name: "index_report_submissions_on_location_id"
    t.index ["report_id"], name: "index_report_submissions_on_report_id"
    t.index ["user_id"], name: "index_report_submissions_on_user_id"
  end

  create_table "report_values", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.decimal "values", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "report_submission_id"
    t.index ["report_submission_id"], name: "index_report_values_on_report_submission_id"
  end

  create_table "reports", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "description"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "role", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rule_bases", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "rule_id"
    t.index ["rule_id"], name: "index_rule_bases_on_rule_id"
  end

  create_table "rule_operands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "rule_id"
    t.index ["rule_id"], name: "index_rule_operands_on_rule_id"
  end

  create_table "rules", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "operator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "report_indicator_id"
    t.index ["report_indicator_id"], name: "index_rules_on_report_indicator_id"
  end

  create_table "user_roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_user_roles_on_role_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.boolean "active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "person_bio_id"
    t.index ["person_bio_id"], name: "index_users_on_person_bio_id"
  end

  add_foreign_key "location_user_maps", "locations"
  add_foreign_key "location_user_maps", "users"
  add_foreign_key "locations", "emr_types"
  add_foreign_key "recipients", "person_bios"
  add_foreign_key "recipients", "reports"
  add_foreign_key "report_indicators", "reports"
  add_foreign_key "report_submissions", "locations"
  add_foreign_key "report_submissions", "reports"
  add_foreign_key "report_submissions", "users"
  add_foreign_key "report_values", "report_submissions"
  add_foreign_key "rule_bases", "rules"
  add_foreign_key "rule_operands", "rules"
  add_foreign_key "rules", "report_indicators"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
  add_foreign_key "users", "person_bios"
end
