class Persona
	attr_accessor :nombre
	def initialize(nombre)
		@nombre = nombre
	end
	def dormir(n)
		puts "Estoy Durmiento #{n.to_s} horas"
	end
end

#persona = Persona.new(nombre: 'XYZ')
#persona.nombre = 'Segundo'
#persona.dormir(4)
#puts persona.nombre

class Empleado < Persona
	attr_accessor :apellido	
	def initialize(params)
		super(params[:nombre])
		@apellido = params[:apellido]
	end
	def dormir
		super(n)
		puts "En el trabajo"
	end
end

#persona = Empleado.new({nombre: 'TuNombre', apellido: 'TuApellido'})
#persona.nombre = 'Segundo R'
#persona.apellido = 'Espana B'
#puts persona.nombre
#puts persona.apellido