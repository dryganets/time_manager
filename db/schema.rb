# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090324124446) do

  create_table "customers", :force => true do |t|
    t.string "first_name", :limit => 40
    t.string "last_name",  :limit => 40
  end

  create_table "log_objects", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "date"
    t.string   "time_spent"
    t.integer  "customer_id"
    t.string   "state",        :limit => 1
    t.string   "type",         :limit => 1
    t.string   "project_type", :limit => 1
    t.float    "rate"
  end

  create_table "milestones", :force => true do |t|
    t.integer  "log_object_id"
    t.datetime "first_planed_pay_date"
    t.datetime "planed_pay_date"
    t.datetime "real_pay_date"
    t.string   "time_spent"
    t.string   "state",                 :limit => 1
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

  create_table "work_logs", :force => true do |t|
    t.string   "description"
    t.integer  "user_id"
    t.integer  "log_object_id"
    t.datetime "date"
    t.string   "time_spent"
  end

end
