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

ActiveRecord::Schema.define(version: 20150310010355) do

  create_table "arguments", force: :cascade do |t|
    t.string   "owner_description"
    t.string   "second_description"
    t.string   "owner_response"
    t.string   "second_respose"
    t.integer  "user_id"
    t.integer  "relationship_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "arguments", ["relationship_id"], name: "index_arguments_on_relationship_id"
  add_index "arguments", ["user_id"], name: "index_arguments_on_user_id"

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "milestones", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "user_id"
    t.integer  "relationship_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "milestones", ["relationship_id"], name: "index_milestones_on_relationship_id"
  add_index "milestones", ["user_id"], name: "index_milestones_on_user_id"

  create_table "relationships", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.integer  "happy_sad"
    t.integer  "lonely_crowded"
    t.integer  "horny_pressured"
    t.integer  "janitor_nagged"
    t.string   "journal_entry"
    t.integer  "user_id"
    t.integer  "relatoinship_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "surveys", ["relatoinship_id"], name: "index_surveys_on_relatoinship_id"
  add_index "surveys", ["user_id"], name: "index_surveys_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "last_name"
    t.string   "first_name"
    t.string   "bio"
  end

  create_table "users_relationships", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "relationship_id"
  end

  add_index "users_relationships", ["relationship_id"], name: "index_users_relationships_on_relationship_id"
  add_index "users_relationships", ["user_id"], name: "index_users_relationships_on_user_id"

end
