class Viagem < ActiveRecord::Base
  validates_presence_of :cidadeOrigem_id, :message => "O campo cidade de origem deve ser preenchido"
  validates_presence_of :cidadeDestino_id, :message => "O campo cidade de destino deve ser preenchido"
  validates_presence_of :saida, :message => "A data de saida deve ser preenchida"
  validates_presence_of :motoristum_id, :message => "O motorista deve ser selecionado"
  
  belongs_to :motoristum
  belongs_to :cidadeOrigem, :class_name => 'Cidade'
  belongs_to :cidadeDestino, :class_name => 'Cidade'
  belongs_to :carona
end
