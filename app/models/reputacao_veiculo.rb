class ReputacaoVeiculo < ActiveRecord::Base
	validates_presence_of :carona_id => "O preenchimento do campo carona e obrigatorio!"
	validates_presence_of :veiculo_id => "O preenchimento do campo veículo e obrigatorio!"
	validates_presence_of :justificativa => "O preenchimento do campo justificativa e obrigatorio!"
	validates_presence_of :ponto => "O preenchimento do campo ponto e obrigatorio!"
end
