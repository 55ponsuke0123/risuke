# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_24_045241) do

  create_table "evaluated_patients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_evaluated_patients_on_patient_id"
    t.index ["user_id"], name: "index_evaluated_patients_on_user_id"
  end

  create_table "patient_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "total_1"
    t.integer "total_2"
    t.text "alignment_comment"
    t.integer "speed"
    t.string "stride"
    t.string "durability"
    t.string "walking_pattern"
    t.string "foot_position"
    t.string "dementia_degree"
    t.text "impact_daily_life"
    t.string "pain_area"
    t.string "appearance_time"
    t.string "degree_of_pain"
    t.string "rom_part_degree"
    t.string "muscle_weakness"
    t.string "muscle_weakness_factor"
    t.string "sense_cooperation"
    t.string "sense_cooperation_impact"
    t.string "paresthesia"
    t.string "paresthesia_impact"
    t.text "others"
    t.text "generalization"
    t.bigint "evaluated_patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "turn_over_id"
    t.integer "get_up_id"
    t.integer "sitting_position_id"
    t.integer "stand_up_id"
    t.integer "standing_id"
    t.integer "transfer_id"
    t.integer "wheelchair_operation_id"
    t.integer "walking_id"
    t.integer "stairs_id"
    t.integer "meal_1_id"
    t.integer "shape_1_id"
    t.integer "balneum_1_id"
    t.integer "outer_wear_id"
    t.integer "under_wear_id"
    t.integer "toilet_1_id"
    t.integer "urination_1_id"
    t.integer "defecation_1_id"
    t.integer "bed_transfer_1_id"
    t.integer "toilet_transfer_1_id"
    t.integer "bathtub_transfer_1_id"
    t.integer "walking_1_id"
    t.integer "stair_1_id"
    t.integer "understanding_1_id"
    t.integer "expression_1_id"
    t.integer "alternating_current_1_id"
    t.integer "solving_1_id"
    t.integer "memory_1_id"
    t.integer "meal_2_id"
    t.integer "transfer_2_id"
    t.integer "shape_2_id"
    t.integer "toilet_2_id"
    t.integer "balneum_2_id"
    t.integer "walking_2_id"
    t.integer "stair_2_id"
    t.integer "changing_clothes_id"
    t.integer "urination_2_id"
    t.integer "defecation_2_id"
    t.integer "relationship_sole_id"
    t.integer "left_right_difference_id"
    t.integer "alignment_id"
    t.integer "postural_tension_id"
    t.integer "impact_id"
    t.integer "upset_id"
    t.integer "redundancy_id"
    t.integer "applicability_id"
    t.integer "gait_id"
    t.integer "factor_tissue_id"
    t.integer "joint_capsule_id"
    t.integer "soft_tissue_id"
    t.index ["evaluated_patient_id"], name: "index_patient_details_on_evaluated_patient_id"
  end

  create_table "patients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age", null: false
    t.integer "sex_id", null: false
    t.integer "height"
    t.integer "weight"
    t.string "postal_code"
    t.string "address"
    t.integer "family_living_together_id"
    t.string "disease_name", null: false
    t.string "medical_history", null: false
    t.string "surgical_history"
    t.string "infection"
    t.text "comment"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "facility_name", null: false
    t.string "department_name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "therapist_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "evaluated_patients", "patients"
  add_foreign_key "evaluated_patients", "users"
  add_foreign_key "patient_details", "evaluated_patients"
  add_foreign_key "patients", "users"
end
