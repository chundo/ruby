class Carro
	def marca=(marca)
		@marca = marca		
	end

	def prrsentacion
		"La marca del carro es: #{@marca}"
	end
end

objeto_marca = Carro.new
objeto_marca.marca = 'BMW'
puts  objeto_marca.prrsentacion


class Moto
	def initialize(marca)
		@marca = marca
	end

	def marca
		@marca
	end
end

objeto_marca_mo = Moto.new('BWIS')
puts objeto_marca_mo.marca

puts '----------------------'

class Persona
	def es_mayor(p)
		self.edad > p.edad
	end

	protected
	def edad
		calcular
	end

	private
	def calcular
		rand(9)
	end
	
end


objjj = Persona.new
objjj.es_mayor = 9
puts objjj
