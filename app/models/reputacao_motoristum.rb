class ReputacaoMotoristum < ActiveRecord::Base
	validates_precense_of :carona_id=> "O preenchimento do campo carona e obrigatorio!"
	validates_precense_of :motorista_id => "O preenchimento do campo motorista e obrigatorio!"
	validates_precense_of :ponto => "O preenchimento do campo ponto e obrigatorio!"
	validates_precense_of :justificativa => "O preenchimento do campo justificativa e obrigatorio!"

end
