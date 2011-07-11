class Veiculo < ActiveRecord::Base
  validates_presence_of :placa, :message => "O campo Placa deve ser preenchido"
  validates_presence_of :modelo, :message => "O campo Modelo deve ser preenchido"
  validates_presence_of :marca, :message => "O campo Marca deve ser preenchido"
  validates_presence_of :cor, :message => "O campo Cor deve ser preenchido"
  validates_presence_of :motoristum_id, :message => "O campo Motorista deve ser preenchido"
  validates_uniqueness_of :placa, :message => "Placa ja cadastrado"
  
  has_many :reputacao_veiculo
  belongs_to :motoristum
end
