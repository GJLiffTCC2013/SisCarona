class CreateReputacaoMotorista < ActiveRecord::Migration
  def self.up
    create_table :reputacao_motorista do |t|
      t.integer :carona_id
      t.integer :motorista_id
      t.text :justificativa
      t.integer :ponto

      t.timestamps
    end
  end

  def self.down
    drop_table :reputacao_motorista
  end
end
