class ReputacaoCarona < ActiveRecord::Base
	validates_precence_of :carona_id=> "O preenchimento do campo carona e obrigatorio!"
	validates_precence_of :motorista_id => "O preenchimento do campo motorista e obrigatorio!"
	validates_precence_of :ponto => "O preenchimento do campo ponto e obrigatorio!"
	validates_precence_of :justificativa => "O preenchimento do campo justificativa e obrigatorio!"
end
