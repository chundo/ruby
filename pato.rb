class Pato
	attr_accessor :tipo
	
	def initialize(tipo)
		@tipo = tipo
	end
	def cuak
		puts 'Quack'
	end
	def nadar
		puts 'Estoy nadando'
	end
	def volar
		puts 'Estoy volando'
	end
	def mostrar
		puts "Soy el pato de tipo #{@tipo}"
	end
end

class Mallard < Pato
	def initialize
		super('Mallard')
	end
end

class Blanco < Pato
	def initialize
		super('Blanco')
	end
end

m = Mallard.new
b = Blanco.new
puts m.mostrar
puts b.mostrar