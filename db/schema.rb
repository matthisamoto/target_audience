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

ActiveRecord::Schema.define(:version => 20110610152133) do

  create_table "adjectives", :force => true do |t|
    t.text     "adjective",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "no_options", :force => true do |t|
    t.text     "no_option",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nouns", :force => true do |t|
    t.text     "noun",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prep_phrases", :force => true do |t|
    t.text     "prep_phrase", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
