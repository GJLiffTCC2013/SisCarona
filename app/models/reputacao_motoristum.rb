class ReputacaoMotoristum < ActiveRecord::Base
	validates_presence_of :carona_id=> "O preenchimento do campo carona e obrigatorio!"
	validates_presence_of :motorista_id => "O preenchimento do campo motorista e obrigatorio!"
	validates_presence_of :ponto => "O preenchimento do campo ponto e obrigatorio!"
	validates_presence_of :justificativa => "O preenchimento do campo justificativa e obrigatorio!"

end
