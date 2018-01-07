class Mamifero
  def respirar
    puts 'está respirando'
  end
end

class Perro < Mamifero
  def ladrar
    puts 'está ladrando'
  end
end

mamifero = Mamifero.new
perro = Perro.new

mamifero.respirar
perro.respirar
perro.ladrar
#mamifero.ladrar

class Persona
	def dormir(n)
		puts "Estas dormido #{n}"
	end
end

class Empleado < Persona
	def inicitalizer
		
	end
	def dormir(n)
		super(n)
	end
end

persona = Empleado.new
persona.dormir(9)