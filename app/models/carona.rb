class Carona < ActiveRecord::Base
	validates_presence_of :login, :message => "o campo login deve ser preenchido"
	validates_presence_of :senha, :message => "Uma senha deve ser escolhida"
	validates_presence_of :endereco, :message => "O endereco deve ser preenchido"
	validates_presence_of :telefone, :message => "Um telefone para contato deve ser preenchido"
	validates_presence_of :rg, :message => "RG deve ser preenchido"
	validates_presence_of :cpf, :message => "CPF deve ser preenchido"	 
	validates_uniqueness_of :login, :message => "Login ja cadastrado, tente outro"
	validates_uniqueness_of :rg, :message => "RG ja cadastrado"
	validates_uniqueness_of :cpf, :message => "CPF ja cadastrado"
	
	has_many :viagem
	has_many :reputacao_carona
	has_many :reputacao_veiculo
end
