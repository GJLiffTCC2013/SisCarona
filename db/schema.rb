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

ActiveRecord::Schema.define(:version => 20110706142846) do

  create_table "caronas", :force => true do |t|
    t.string   "login"
    t.string   "senha"
    t.string   "nome"
    t.string   "email"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "rg"
    t.string   "cpf"
    t.integer  "pontos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cidades", :force => true do |t|
    t.string   "nome"
    t.integer  "estado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estados", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "motorista", :force => true do |t|
    t.string   "login"
    t.string   "senha"
    t.string   "nome"
    t.string   "email"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "rg"
    t.string   "cpf"
    t.integer  "pontos"
    t.string   "cnh"
    t.string   "validadeCnh"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reputacao_caronas", :force => true do |t|
    t.integer  "motorista_id"
    t.integer  "carona_id"
    t.text     "justificativa"
    t.integer  "ponto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reputacao_motorista", :force => true do |t|
    t.integer  "carona_id"
    t.integer  "motorista_id"
    t.text     "justificativa"
    t.integer  "ponto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reputacao_veiculos", :force => true do |t|
    t.integer  "carona_id"
    t.integer  "veiculo_id"
    t.text     "justificativa"
    t.integer  "ponto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "veiculos", :force => true do |t|
    t.string   "placa"
    t.string   "modelo"
    t.string   "marca"
    t.string   "cor"
    t.integer  "pontos"
    t.integer  "motorista_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "viagems", :force => true do |t|
    t.integer  "cidadeOrigem_id"
    t.integer  "cidadeDestino_id"
    t.string   "saida"
    t.integer  "motorista_id"
    t.integer  "carona_id"
    t.float    "preco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
