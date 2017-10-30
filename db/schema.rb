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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171030173241) do

  create_table "admins", force: :cascade do |t|
    t.string "login"
    t.string "senha"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dado_inseridos", force: :cascade do |t|
    t.integer "id_fila"
    t.string "posicao"
    t.string "horario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filas", force: :cascade do |t|
    t.integer "estado_fila"
    t.integer "id_restaurante"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurantes", force: :cascade do |t|
    t.string "nome"
    t.string "cardapio"
    t.string "layout"
    t.string "mapa"
    t.string "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end