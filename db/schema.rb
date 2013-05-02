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

ActiveRecord::Schema.define(:version => 20130423010022) do

  create_table "approval_process_details", :force => true do |t|
    t.integer  "approval_process_id"
    t.integer  "user_id"
    t.integer  "approval_order"
    t.boolean  "is_final"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "publication_status_id"
  end

  create_table "approval_processes", :force => true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "rejected_status_id"
  end

  create_table "approvals", :force => true do |t|
    t.datetime "approval_date"
    t.integer  "user_id"
    t.string   "decision"
    t.integer  "publication_id"
    t.string   "observations"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.boolean  "approved"
    t.string   "pub_title_quick_edit"
    t.string   "pub_bio_quick_edit"
    t.boolean  "has_pub_bio_quick_edit"
    t.boolean  "has_pub_title_quick_edit"
    t.integer  "approval_status_id"
  end

  create_table "campaigns", :force => true do |t|
    t.string   "name"
    t.date     "date_start"
    t.date     "date_ent"
    t.boolean  "is_open"
    t.decimal  "initial_budget"
    t.decimal  "current_budget"
    t.decimal  "acum_cost"
    t.integer  "customer_id"
    t.string   "campaign_code"
    t.integer  "client_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "approval_process_id"
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "phone_number"
    t.text     "address"
    t.string   "email"
    t.string   "webpage"
    t.string   "status"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.text     "welcome_text"
  end

  create_table "comments", :force => true do |t|
    t.string   "title"
    t.string   "note"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contact_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "client_id"
  end

  create_table "customer_contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "contact_category_id"
    t.string   "position"
    t.string   "bio"
    t.string   "address"
    t.string   "main_phone"
    t.string   "other_phone"
    t.integer  "customer_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "maincontact"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "client_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "publication_archives", :force => true do |t|
    t.integer  "publication_id"
    t.string   "name"
    t.string   "code"
    t.string   "pub_bio"
    t.string   "description"
    t.integer  "version"
    t.string   "pub_title"
    t.string   "pub_image_file_name"
    t.string   "pub_image_content_type"
    t.integer  "pub_image_file_size"
    t.datetime "pub_image_updated_at"
    t.integer  "publication_type_id"
    t.string   "current_approver"
    t.integer  "publication_status_id"
    t.date     "date_final_approved"
    t.date     "pub_date"
    t.integer  "campaign_id"
    t.string   "observations"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "publication_comments", :force => true do |t|
    t.integer  "comment_id"
    t.integer  "publication_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "publication_statuses", :force => true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "publication_types", :force => true do |t|
    t.string   "name"
    t.integer  "client_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "publications", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "pub_bio"
    t.string   "description"
    t.integer  "version"
    t.string   "pub_title"
    t.string   "pub_image_file_name"
    t.string   "pub_image_content_type"
    t.integer  "pub_image_file_size"
    t.datetime "pub_image_updated_at"
    t.integer  "publication_type_id"
    t.string   "current_approver"
    t.integer  "publication_status_id"
    t.date     "date_final_approved"
    t.date     "pub_date"
    t.integer  "campaign_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "approval_process_id"
    t.integer  "creator_user_id"
    t.integer  "designer_user_id"
  end

  create_table "user_profile_clients", :force => true do |t|
    t.integer  "client_id"
    t.integer  "user_profile_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "user_profile_customers", :force => true do |t|
    t.integer  "customer_id"
    t.integer  "user_profile_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "user_profiles", :force => true do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.date     "birthdate"
    t.string   "country"
    t.text     "address"
    t.string   "phone"
    t.string   "cellphone"
    t.integer  "client_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "last_name"
    t.date     "birthdate"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
