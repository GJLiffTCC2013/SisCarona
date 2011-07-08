class Cidade < ActiveRecord::Base
	validates_presence_of :nome, :message => "O preenchimento do campo nome 'e obrigatorio!"
end
