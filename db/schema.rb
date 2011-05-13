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

ActiveRecord::Schema.define(:version => 20110511130239) do

  create_table "attachments", :force => true do |t|
    t.integer  "document_id"
    t.integer  "interview_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
  end

  create_table "import_candidates", :force => true do |t|
    t.string   "name"
    t.string   "total_exp"
    t.string   "ror_exp"
    t.date     "doi"
    t.string   "type_location"
    t.string   "result"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interviews", :force => true do |t|
    t.string   "name"
    t.string   "total_exp"
    t.string   "ror_exp"
    t.date     "doi"
    t.string   "type_location"
    t.string   "result"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "phoneNumber",   :limit => 8
    t.text     "remarks"
    t.text     "email"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "salt"
    t.string   "encrypted_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.integer  "person_id"
    t.string   "ip_address"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
