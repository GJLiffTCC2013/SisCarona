class CreateViagems < ActiveRecord::Migration
  def self.up
    create_table :viagems do |t|
      t.integer :cidadeOrigem_id
      t.integer :cidadeDestino_id
      t.string :saida
      t.integer :motoristum_id
      t.integer :carona_id
      t.float :preco

      t.timestamps
    end
  end

  def self.down
    drop_table :viagems
  end
end
