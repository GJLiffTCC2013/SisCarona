class CreateVeiculos < ActiveRecord::Migration
  def self.up
    create_table :veiculos do |t|
      t.string :placa
      t.string :modelo
      t.string :marca
      t.string :cor
      t.integer :pontos
      t.integer :motoristum_id

      t.timestamps
    end
  end

  def self.down
    drop_table :veiculos
  end
end
