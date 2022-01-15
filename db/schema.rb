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

ActiveRecord::Schema.define(version: 20220115019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "coach_notifications", force: :cascade do |t|
    t.string "text"
    t.bigint "coach_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coach_id"], name: "index_coach_notifications_on_coach_id"
  end

# Could not dump table "coaches" because of following StandardError
#   Unknown type 'gender' for column 'gender'

  create_table "coaches_problems", force: :cascade do |t|
    t.bigint "coach_id", null: false
    t.bigint "problem_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coach_id"], name: "index_coaches_problems_on_coach_id"
    t.index ["problem_id"], name: "index_coaches_problems_on_problem_id"
  end

  create_table "completed_steps", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "step_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["step_id"], name: "index_completed_steps_on_step_id"
    t.index ["user_id"], name: "index_completed_steps_on_user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "coach_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coach_id"], name: "index_invitations_on_coach_id"
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.boolean "is_like"
    t.bigint "technique_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["technique_id"], name: "index_likes_on_technique_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "text"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "problems", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "problems_techniques", force: :cascade do |t|
    t.bigint "problem_id", null: false
    t.bigint "technique_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["problem_id"], name: "index_problems_techniques_on_problem_id"
    t.index ["technique_id"], name: "index_problems_techniques_on_technique_id"
  end

  create_table "problems_users", force: :cascade do |t|
    t.bigint "problem_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["problem_id"], name: "index_problems_users_on_problem_id"
    t.index ["user_id"], name: "index_problems_users_on_user_id"
  end

  create_table "steps", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "image"
    t.string "video"
    t.string "audio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "steps_techniques", force: :cascade do |t|
    t.bigint "step_id", null: false
    t.bigint "technique_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["step_id"], name: "index_steps_techniques_on_step_id"
    t.index ["technique_id"], name: "index_steps_techniques_on_technique_id"
  end

  create_table "techniques", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "image"
    t.integer "age_start"
    t.integer "age_end"
    t.integer "duration_start"
    t.integer "duration_end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "techniques_users", force: :cascade do |t|
    t.bigint "technique_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["technique_id"], name: "index_techniques_users_on_technique_id"
    t.index ["user_id"], name: "index_techniques_users_on_user_id"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'gender' for column 'gender'

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "coach_notifications", "coaches"
  add_foreign_key "coaches_problems", "coaches"
  add_foreign_key "coaches_problems", "problems"
  add_foreign_key "completed_steps", "steps"
  add_foreign_key "completed_steps", "users"
  add_foreign_key "invitations", "coaches"
  add_foreign_key "invitations", "users"
  add_foreign_key "likes", "techniques"
  add_foreign_key "likes", "users"
  add_foreign_key "notifications", "users"
  add_foreign_key "problems_techniques", "problems"
  add_foreign_key "problems_techniques", "techniques"
  add_foreign_key "problems_users", "problems"
  add_foreign_key "problems_users", "users"
  add_foreign_key "steps_techniques", "steps"
  add_foreign_key "steps_techniques", "techniques"
  add_foreign_key "techniques_users", "techniques"
  add_foreign_key "techniques_users", "users"
  add_foreign_key "users", "coaches"
end
