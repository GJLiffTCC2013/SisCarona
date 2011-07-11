class ReputacaoCarona < ActiveRecord::Base
	validates_presence_of :carona_id, :message=> "O preenchimento do campo carona e obrigatorio!"
	validates_presence_of :motoristum_id, :message => "O preenchimento do campo motorista e obrigatorio!"
	validates_presence_of :ponto, :message => "O preenchimento do campo ponto e obrigatorio!"
	validates_presence_of :justificativa, :message => "O preenchimento do campo justificativa e obrigatorio!"
	
	belongs_to :carona
	belongs_to :motoristum
end
