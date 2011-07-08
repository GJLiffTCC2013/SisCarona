class ReputacaoVeiculo < ActiveRecord::Base
	validates_precence_of :carona_id => "O preenchimento do campo carona e obrigatorio!"
	validates_precence_of :veiculo_id => "O preenchimento do campo veículo e obrigatorio!"
	validates_precence_of :justificativa => "O preenchimento do campo justificativa e obrigatorio!"
	validates_precence_of :ponto => "O preenchimento do campo ponto e obrigatorio!"
end
