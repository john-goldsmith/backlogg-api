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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "columns", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "sprint_id"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "body"
    t.integer  "task_id"
    t.integer  "user_id"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "code",       limit: 2
    t.integer  "user_id"
    t.boolean  "is_active",            default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "related_tasks", force: :cascade do |t|
    t.integer  "task_id"
    t.integer  "related_task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sprints", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.date     "starts_at"
    t.date     "ends_at"
    t.integer  "project_id"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tag_types", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.boolean  "is_active",  default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: :cascade do |t|
    t.integer  "task_id"
    t.integer  "tag_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_types", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.boolean  "comments_allowed"
    t.boolean  "is_active",        default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "column_id"
    t.integer  "parent_task"
    t.boolean  "comments_allowed", default: true
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "template_columns", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.integer  "template_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.boolean  "is_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "screen_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
