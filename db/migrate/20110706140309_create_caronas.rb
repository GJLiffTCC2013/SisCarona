class CreateCaronas < ActiveRecord::Migration
  def self.up
    create_table :caronas do |t|
      t.string :login
      t.string :senha
      t.string :nome
      t.string :email
      t.string :endereco
      t.string :telefone
      t.string :rg
      t.string :cpf
      t.integer :pontos

      t.timestamps
    end
  end

  def self.down
    drop_table :caronas
  end
end
