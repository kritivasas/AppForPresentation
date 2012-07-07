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

ActiveRecord::Schema.define(:version => 20120706223259) do

  create_table "presentations", :force => true do |t|
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slide_positions", :force => true do |t|
    t.integer  "step"
    t.string   "last_update_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "presentation_uid"
  end

  create_table "slides", :force => true do |t|
    t.integer  "presentation_id"
    t.text     "html_content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "slide_class"
    t.integer  "position_x"
    t.integer  "position_y"
    t.integer  "position_z"
    t.integer  "rotation_x"
    t.integer  "rotation_y"
    t.integer  "rotation_z"
    t.integer  "scale"
  end

  add_index "slides", ["presentation_id"], :name => "index_slides_on_presentation_id"

end
