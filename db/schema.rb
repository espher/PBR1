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

ActiveRecord::Schema.define(:version => 20130418233936) do

  create_table "dependencies", :force => true do |t|
    t.string   "department"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ideas", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leveleightcauses", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "levelsevencause_id"
  end

  create_table "leveleighteffects", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "levelseveneffect_id"
  end

  create_table "leveleightends", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "levelsevenend_id"
  end

  create_table "leveleightways", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "levelsevenway_id"
  end

  create_table "levelfivecauses", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "levelfourcause_id"
  end

  create_table "levelfiveeffects", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "levelfoureffect_id"
  end

  create_table "levelfiveends", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "levelfourend_id"
  end

  create_table "levelfiveways", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "levelfourway_id"
  end

  create_table "levelfourcauses", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "levelthreecause_id"
  end

  create_table "levelfoureffects", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "levelthreeeffect_id"
  end

  create_table "levelfourends", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "levelthreeend_id"
  end

  create_table "levelfourways", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "levelthreeway_id"
  end

  create_table "levelonecauses", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "problem_id"
  end

  create_table "leveloneeffects", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "problem_id"
  end

  create_table "leveloneends", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "problem_id"
  end

  create_table "leveloneways", :force => true do |t|
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "problem_id"
  end

  create_table "levelsevencauses", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "levelsixcause_id"
  end

  create_table "levelseveneffects", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "levelsixeffect_id"
  end

  create_table "levelsevenends", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "levelsixend_id"
  end

  create_table "levelsevenways", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "levelsixway_id"
  end

  create_table "levelsixcauses", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "levelfivecause_id"
  end

  create_table "levelsixeffects", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "levelfiveeffect_id"
  end

  create_table "levelsixends", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "levelfiveend_id"
  end

  create_table "levelsixways", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "levelfiveway_id"
  end

  create_table "levelthreecauses", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "leveltwocause_id"
  end

  create_table "levelthreeeffects", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "leveltwoeffect_id"
  end

  create_table "levelthreeends", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "leveltwoend_id"
  end

  create_table "levelthreeways", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "leveltwoway_id"
  end

  create_table "leveltwocauses", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "levelonecause_id"
  end

  create_table "leveltwoeffects", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "leveloneeffect_id"
  end

  create_table "leveltwoends", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "leveloneend_id"
  end

  create_table "leveltwoways", :force => true do |t|
    t.string   "content"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "leveloneway_id"
  end

  create_table "problems", :force => true do |t|
    t.integer  "budget_program"
    t.string   "city"
    t.string   "department"
    t.string   "email"
    t.string   "name"
    t.string   "responsable_unit"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "prueba2s", :force => true do |t|
    t.string   "content"
    t.integer  "levelfourend_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "prueba2s", ["levelfourend_id"], :name => "index_prueba2s_on_levelfourend_id"

  create_table "pruebas", :force => true do |t|
    t.string   "content"
    t.integer  "problem_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "pruebas", ["problem_id"], :name => "index_pruebas_on_problem_id"

  create_table "tickets", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
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
