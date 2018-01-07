def porcentaje(a, b)
	 a * 100 / b
end
puts porcentaje(10, 100)
puts '--------------------------------'
=begin
def porcentaje_a(a, b)
	raise TypeError, 'El primer argumento no es un numero' if !a.is_a? Numeric
	raise TypeError, 'El segundo argumento no es un numero' unless b.is_a? Numeric
	(a * 100.0) / b
end
puts porcentaje_a(100, '10')
=end
puts '--------------------------------'
a = 1
b = '2'
begin
	puts a + b
rescue
	puts "No se puede sumar #{a.class} com #{b.class}"
end
puts '--------------------------------'

def full_name(nombre, apellido)
	nombre + ' ' + apellido
	rescue => error
		"El error es: #{error.message}"
	ensure
	return nombre
end
#puts full_name('Segundo', 3)
puts full_name('Segundo', 'españa')