class CreateReputacaoVeiculos < ActiveRecord::Migration
  def self.up
    create_table :reputacao_veiculos do |t|
      t.integer :carona_id
      t.integer :veiculo_id
      t.text :justificativa
      t.integer :ponto

      t.timestamps
    end
  end

  def self.down
    drop_table :reputacao_veiculos
  end
end
