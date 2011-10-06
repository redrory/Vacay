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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110907020226) do

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.date     "doe"
    t.date     "dob"
    t.integer  "vacayTotal"
    t.integer  "vacayUsed"
    t.integer  "sickTotal"
    t.integer  "sickUsed"
    t.integer  "user_id"
    t.string   "department"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "manages", :force => true do |t|
    t.string   "name"
    t.date     "dob"
    t.date     "doe"
    t.integer  "vacayAllot"
    t.integer  "vacayUsed"
    t.integer  "sickAllot"
    t.integer  "sickHave"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", :force => true do |t|
    t.string   "name"
    t.integer  "cost"
    t.string   "details"
    t.integer  "limit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prompts", :force => true do |t|
    t.string   "weekPrompt"
    t.string   "monthPrompt"
    t.string   "dayPrompt"
    t.string   "maxVacay"
    t.string   "maxSick"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "company"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => true
    t.integer  "size"
  end

  create_table "vacays", :force => true do |t|
    t.integer  "brought_forward"
    t.date     "dateFrom"
    t.date     "dateUntil"
    t.integer  "user_id"
    t.integer  "employee_id"
    t.integer  "sumVacay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
