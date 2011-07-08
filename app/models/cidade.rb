class Cidade < ActiveRecord::Base
	validates_precence_of :nome => "O preenchimento do campo nome 'e obrigatorio!"
end
