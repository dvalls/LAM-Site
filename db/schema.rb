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

ActiveRecord::Schema.define(version: 20131102152316) do

  create_table "about_translations", force: true do |t|
    t.integer  "about_id",   null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
  end

  add_index "about_translations", ["about_id"], name: "index_about_translations_on_about_id"
  add_index "about_translations", ["locale"], name: "index_about_translations_on_locale"

  create_table "abouts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carousel_translations", force: true do |t|
    t.integer  "carousel_id", null: false
    t.string   "locale",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "description"
  end

  add_index "carousel_translations", ["carousel_id"], name: "index_carousel_translations_on_carousel_id"
  add_index "carousel_translations", ["locale"], name: "index_carousel_translations_on_locale"

  create_table "carousels", force: true do |t|
    t.integer "project_id"
    t.string  "title"
    t.string  "description"
    t.string  "image_url"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.string   "shortname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_projects", force: true do |t|
    t.integer "category_id"
    t.integer "project_id"
  end

  create_table "category_translations", force: true do |t|
    t.integer  "category_id", null: false
    t.string   "locale",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "shortname"
  end

  add_index "category_translations", ["category_id"], name: "index_category_translations_on_category_id"
  add_index "category_translations", ["locale"], name: "index_category_translations_on_locale"

  create_table "contact_translations", force: true do |t|
    t.integer  "contact_id", null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "body"
  end

  add_index "contact_translations", ["contact_id"], name: "index_contact_translations_on_contact_id"
  add_index "contact_translations", ["locale"], name: "index_contact_translations_on_locale"

  create_table "contacts", force: true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feed_translations", force: true do |t|
    t.integer  "feed_id",    null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "title"
    t.text     "body"
  end

  add_index "feed_translations", ["feed_id"], name: "index_feed_translations_on_feed_id"
  add_index "feed_translations", ["locale"], name: "index_feed_translations_on_locale"

  create_table "feeds", force: true do |t|
    t.text     "title"
    t.text     "body"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "images", force: true do |t|
    t.integer "imageable_id"
    t.string  "imageable_type"
    t.string  "title"
    t.text    "description"
    t.text    "url"
  end

  create_table "project_translations", force: true do |t|
    t.integer  "project_id",  null: false
    t.string   "locale",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "description"
    t.text     "body"
  end

  add_index "project_translations", ["locale"], name: "index_project_translations_on_locale"
  add_index "project_translations", ["project_id"], name: "index_project_translations_on_project_id"

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "body"
    t.date     "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "cover_image"
  end

  add_index "projects", ["slug"], name: "index_projects_on_slug", unique: true

  create_table "tag_translations", force: true do |t|
    t.integer  "tag_id",     null: false
    t.string   "locale",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "tag_translations", ["locale"], name: "index_tag_translations_on_locale"
  add_index "tag_translations", ["tag_id"], name: "index_tag_translations_on_tag_id"

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: true do |t|
    t.string "name"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "email",                          null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
    t.string   "salt",               limit: 128
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
