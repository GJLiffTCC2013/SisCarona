class Estado < ActiveRecord::Base
	validates_presence_of :nome => "O preenchimento do campo nome e obrigatorio!"
end
