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

ActiveRecord::Schema.define(:version => 20140609220840) do

  create_table "cdr", :force => true do |t|
    t.datetime "calldate",                                  :null => false
    t.string   "clid",        :limit => 80, :default => "", :null => false
    t.string   "src",         :limit => 80, :default => "", :null => false
    t.string   "dst",         :limit => 80, :default => "", :null => false
    t.string   "dcontext",    :limit => 80, :default => "", :null => false
    t.string   "channel",     :limit => 80, :default => "", :null => false
    t.string   "dstchannel",  :limit => 80, :default => "", :null => false
    t.string   "lastapp",     :limit => 80, :default => "", :null => false
    t.string   "lastdata",    :limit => 80, :default => "", :null => false
    t.integer  "duration",    :limit => 8,                  :null => false
    t.integer  "billsec",     :limit => 8,                  :null => false
    t.string   "disposition", :limit => 45, :default => "", :null => false
    t.integer  "amaflags",    :limit => 8,                  :null => false
    t.string   "accountcode", :limit => 20, :default => "", :null => false
    t.string   "uniqueid",    :limit => 32, :default => "", :null => false
    t.string   "userfield",                 :default => "", :null => false
  end

  add_index "cdr", ["calldate"], :name => "cdr_calldate_index"

  create_table "destinos", :force => true do |t|
    t.string   "indicativo"
    t.string   "bloque"
    t.string   "localidad"
    t.string   "clave_tasacion"
    t.float    "costo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "destinos", ["indicativo"], :name => "destinos_indicativo_index"

  create_table "ic_destinos", :force => true do |t|
    t.string   "indicativo"
    t.float    "costo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ic_destinos", ["indicativo"], :name => "ic_desinos_indicativo_index", :unique => true

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
