module Usuario
	SEXO = "Masculino"

	def Usuario.nombre
		"Segundo"
	end
	def Usuario.apellido
		"Espana"
	end

	def nick
		return 'chundo'
	end

	def novia
		return 'Te amo' if @ella == 'Lauren'
		'No es'
	end

	class Profesion
		def self.carrera
			puts 'Ingeniero'
		end
	end
end

module Admin

end

puts Usuario::SEXO
puts Usuario.nombre
puts Usuario.apellido
puts Usuario::Profesion.carrera

#include, erencia multiple
class Sr
	include Usuario
	attr_accessor :ella
end

ni = Sr.new
puts ni.nick

novi = Sr.new
novi.ella = 'Lauren'
puts novi.novia

#herencia directa al objeto
puts '-----------------'
yes = Sr.new
yes.extend(Usuario)
puts yes.novia