class Cidade < ActiveRecord::Base
	validates_presence_of :nome, :message => "O preenchimento do campo nome 'e obrigatorio!"
	validates_uniqueness_of :nome, :message => "Nome ja cadastrado"
	
	belongs_to :estado
	has_many :viagem
end
