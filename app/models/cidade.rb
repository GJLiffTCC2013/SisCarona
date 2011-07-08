class Cidade < ActiveRecord::Base
	validates_precense_of :nome => "O preenchimento do campo nome 'e obrigatorio!"
end
