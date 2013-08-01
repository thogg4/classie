<<<<<<< HEAD
# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
=======
# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20130715154627) do
=======
ActiveRecord::Schema.define(:version => 20110418180509) do
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed

  create_table "ads", :force => true do |t|
    t.string   "title"
    t.text     "description"
<<<<<<< HEAD
=======
    t.string   "tags"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
    t.integer  "user_id"
    t.string   "price"
    t.string   "city"
    t.string   "state"
<<<<<<< HEAD
    t.string   "sub_cat"
    t.integer  "views"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
=======
    t.string   "sub_category"
    t.string   "cents"
    t.integer  "views"
  end

  create_table "assets", :force => true do |t|
    t.integer  "ad_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
  end

  create_table "cats", :force => true do |t|
    t.string   "name"
    t.boolean  "admin"
<<<<<<< HEAD
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "users", :force => true do |t|
    t.string   "email",                           :null => false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "last_login_from_ip_address"
    t.string   "first_name"
    t.string   "last_name"
=======
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "sub_cats", :force => true do |t|
    t.string   "name"
    t.boolean  "admin"
    t.integer  "cat_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "street"
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
<<<<<<< HEAD
  end

  add_index "users", ["last_logout_at", "last_activity_at"], :name => "index_users_on_last_logout_at_and_last_activity_at"
  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token"
=======
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true
>>>>>>> d4a4f1bcc942c20df1b86ac333158c9e7d25fbed

end
