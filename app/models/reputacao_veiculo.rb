class ReputacaoVeiculo < ActiveRecord::Base
	validates_precense_of :carona_id => "O preenchimento do campo carona e obrigatorio!"
	validates_precense_of :veiculo_id => "O preenchimento do campo veículo e obrigatorio!"
	validates_precense_of :justificativa => "O preenchimento do campo justificativa e obrigatorio!"
	validates_precense_of :ponto => "O preenchimento do campo ponto e obrigatorio!"
end
