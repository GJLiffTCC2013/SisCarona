class CreateMotorista < ActiveRecord::Migration
  def self.up
    create_table :motorista do |t|
      t.string :login
      t.string :senha
      t.string :nome
      t.string :email
      t.string :endereco
      t.string :telefone
      t.string :rg
      t.string :cpf
      t.integer :pontos
      t.string :cnh
      t.string :validadeCnh

      t.timestamps
    end
  end

  def self.down
    drop_table :motorista
  end
end
