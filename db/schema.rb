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

ActiveRecord::Schema.define(:version => 20130206090914) do

  create_table "agencies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "security_code"
    t.integer  "agency_type_id"
  end

  create_table "agency_types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "project_procurement_management_plans", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "agency_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "version_num"
    t.integer  "year"
    t.text     "description"
    t.datetime "ppmp_period_covered_start"
    t.datetime "ppmp_period_covered_end"
  end

  create_table "projects", :force => true do |t|
    t.integer  "project_procurement_management_plan_id"
    t.string   "code"
    t.string   "status"
    t.string   "mode_of_procurement"
    t.string   "remarks"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.text     "description"
    t.string   "pmo_end_user"
    t.string   "procurement_method"
    t.float    "project_cost"
    t.datetime "pre_procurement_conference"
    t.datetime "ads_post_iaeb"
    t.datetime "pre_bid_conference"
    t.datetime "submission_bids"
    t.datetime "bid_evaluation"
    t.datetime "post_quali_evaluation"
    t.datetime "notice_proceed"
    t.datetime "delivery_completion"
    t.datetime "acceptance"
    t.string   "source_of_funds"
    t.float    "estimate_budget_total"
    t.string   "estimate_budget_mode"
    t.string   "estimate_budget_co"
    t.float    "contract_cost"
    t.datetime "award_contract"
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
    t.integer  "agency_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
