class ReputacaoMotoristum < ActiveRecord::Base
	validates_precence_of :carona_id=> "O preenchimento do campo carona é obrigatório!"
	validates_precence_of :motorista_id => "O preenchimento do campo motorista é obrigatório!"
	validates_precence_of :ponto => "O preenchimento do campo ponto é obrigatório!"
	validates_precence_of :justificativa => "O preenchimento do campo justificativa é obrigatório!"

end
