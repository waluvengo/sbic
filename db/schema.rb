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

ActiveRecord::Schema.define(:version => 20120116123855) do

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "subject"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enquiries", :force => true do |t|
    t.string   "enquirer_name"
    t.string   "enquirer_email"
    t.string   "enquirer_address"
    t.string   "enquirer_postcode"
    t.date     "feedback_due_date"
    t.string   "enquiry_title"
    t.text     "enquiry_details"
    t.string   "enquiry_nature"
    t.string   "grid_reference"
    t.string   "search_area_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", :force => true do |t|
    t.string   "publication_name"
    t.integer  "isbn"
    t.integer  "publication_year"
    t.string   "author"
    t.string   "publisher"
    t.integer  "pages"
    t.string   "availability"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sightings", :force => true do |t|
    t.string   "species_name"
    t.string   "state"
    t.integer  "abundance"
    t.string   "location"
    t.string   "grid_reference"
    t.date     "observation_date"
    t.string   "observer"
    t.string   "email"
    t.integer  "telephone"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "species", :force => true do |t|
    t.string   "species_name"
    t.string   "state"
    t.integer  "abundance"
    t.string   "location"
    t.string   "county"
    t.string   "grid_reference"
    t.string   "provenance"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "observer"
    t.string   "determiner"
    t.string   "record_type"
    t.string   "reference"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "staff_members", :force => true do |t|
    t.string   "staff_id"
    t.string   "first_name"
    t.string   "surname"
    t.string   "email"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
  end

  add_index "staff_members", ["email"], :name => "index_staff_members_on_email", :unique => true

end
