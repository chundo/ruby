puts "---- METODO CON ARGUMENTOS -----"
def palabra(*args)
	system "clear"
	puts "Hola #{args[0]} #{args[1]},"
	puts "Tu numero favorito es: #{args[2]}"
	puts "Te enviaremos un mensaje a tu correo: #{args[-1]}"
	puts "Y recuerda tu username es: #{args[-2]}"
end
palabra('segundo', 'espana', 528, 1990, 'chundo', 'segundo.espana1@gmail.com')

puts "---- METODO CON VALOR POR DEFAULT -----"
def ceo(nombre="Segundo Espana")
	puts "Hola #{nombre}"
end
ceo('Diana Valle')

puts "---- METODO CON HASH -----"
def cto(hash)
	puts "Hola #{hash[:nombre]}"
end
cto({nombre: 'Segundo', apellido: 'Espana'}) 