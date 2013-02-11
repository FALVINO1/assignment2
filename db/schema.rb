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

ActiveRecord::Schema.define(:version => 20130211004830) do

  create_table "Players_Teams", :id => false, :force => true do |t|
    t.integer "Team_id",   :null => false
    t.integer "Player_id", :null => false
  end

  create_table "championships", :force => true do |t|
    t.string   "TeamName"
    t.integer  "Year"
    t.integer  "Wins"
    t.integer  "Loses"
    t.integer  "Team_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "Name"
    t.integer  "Teams_Played_For"
    t.string   "Position"
    t.integer  "Points"
    t.integer  "Rebounds"
    t.integer  "Assists"
    t.integer  "Championships_Won"
    t.integer  "MVP_Won"
    t.integer  "Finals_MVP_Won"
    t.integer  "AllStar"
    t.integer  "Year_Retired"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "TeamName"
    t.string   "City"
    t.integer  "Championships"
    t.integer  "Player_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
