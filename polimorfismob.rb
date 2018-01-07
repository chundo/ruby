require './polimorfismo'

#persona = Persona.new(nombre: 'XYZ')
#persona.nombre = 'Segundo'
#persona.dormir(4)
#puts persona.nombre

persona = Empleado.new({nombre: 'TuNombre', apellido: 'TuApellido'})
persona.nombre = 'Segundo R'
persona.apellido = 'Espana B'
puts persona.nombre
puts persona.apellido