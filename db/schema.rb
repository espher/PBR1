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

ActiveRecord::Schema.define(:version => 20130409174620) do

  create_table "ideas", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "ideas", ["problem_id"], :name => "index_ideas_on_problem_id"

  create_table "leveleightcauses", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "leveleightcauses", ["problem_id"], :name => "index_leveleightcauses_on_problem_id"

  create_table "leveleighteffects", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.integer  "levelseveneffect_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "leveleighteffects", ["levelseveneffect_id"], :name => "index_leveleighteffects_on_levelseveneffect_id"
  add_index "leveleighteffects", ["problem_id"], :name => "index_leveleighteffects_on_problem_id"

  create_table "levelfivecauses", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "levelfivecauses", ["problem_id"], :name => "index_levelfivecauses_on_problem_id"

  create_table "levelfiveeffects", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.integer  "levelfoureffect_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "levelfiveeffects", ["levelfoureffect_id"], :name => "index_levelfiveeffects_on_levelfoureffect_id"
  add_index "levelfiveeffects", ["problem_id"], :name => "index_levelfiveeffects_on_problem_id"

  create_table "levelfourcauses", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "levelfourcauses", ["problem_id"], :name => "index_levelfourcauses_on_problem_id"

  create_table "levelfoureffects", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.integer  "levelthreeeffect_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "levelfoureffects", ["levelthreeeffect_id"], :name => "index_levelfoureffects_on_levelthreeeffect_id"
  add_index "levelfoureffects", ["problem_id"], :name => "index_levelfoureffects_on_problem_id"

  create_table "levelonecauses", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "levelonecauses", ["problem_id"], :name => "index_levelonecauses_on_problem_id"

  create_table "leveloneeffects", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "leveloneeffects", ["problem_id"], :name => "index_leveloneeffects_on_problem_id"

  create_table "levelsevencauses", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "levelsevencauses", ["problem_id"], :name => "index_levelsevencauses_on_problem_id"

  create_table "levelseveneffects", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.integer  "levelsixeffect_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "levelseveneffects", ["levelsixeffect_id"], :name => "index_levelseveneffects_on_levelsixeffect_id"
  add_index "levelseveneffects", ["problem_id"], :name => "index_levelseveneffects_on_problem_id"

  create_table "levelsixcauses", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "levelsixcauses", ["problem_id"], :name => "index_levelsixcauses_on_problem_id"

  create_table "levelsixeffects", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.integer  "levelfiveeffect_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "levelsixeffects", ["levelfiveeffect_id"], :name => "index_levelsixeffects_on_levelfiveeffect_id"
  add_index "levelsixeffects", ["problem_id"], :name => "index_levelsixeffects_on_problem_id"

  create_table "levelthreecauses", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "levelthreecauses", ["problem_id"], :name => "index_levelthreecauses_on_problem_id"

  create_table "levelthreeeffects", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.integer  "leveltwoeffect_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "levelthreeeffects", ["leveltwoeffect_id"], :name => "index_levelthreeeffects_on_leveltwoeffect_id"
  add_index "levelthreeeffects", ["problem_id"], :name => "index_levelthreeeffects_on_problem_id"

  create_table "leveltwocauses", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "leveltwocauses", ["problem_id"], :name => "index_leveltwocauses_on_problem_id"

  create_table "leveltwoeffects", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.integer  "leveloneeffect_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "leveltwoeffects", ["leveloneeffect_id"], :name => "index_leveltwoeffects_on_leveloneeffect_id"
  add_index "leveltwoeffects", ["problem_id"], :name => "index_leveltwoeffects_on_problem_id"

  create_table "problems", :force => true do |t|
    t.string   "name"
    t.string   "department"
    t.string   "responsable_unit"
    t.string   "email"
    t.string   "budget_program"
    t.string   "city"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "tickets", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "email"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin",                  :default => false
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
