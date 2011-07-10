class CreateReputacaoCaronas < ActiveRecord::Migration
  def self.up
    create_table :reputacao_caronas do |t|
      t.integer :motoristum_id
      t.integer :carona_id
      t.text :justificativa
      t.integer :ponto

      t.timestamps
    end
  end

  def self.down
    drop_table :reputacao_caronas
  end
end
