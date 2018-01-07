$carros = ['mazda', 'toyota']

def tienda
	system "clear"
	$carros
end
def ver(carro)
	system "clear"
	puts $carros[carro.to_i]
end
def ingresar(carro)
	system "clear"
	$carros << carro
end
def actualizar
	system "clear"
	puts '[Ingrese el Indice]: '
	indice = gets.chomp.to_i
	puts '[Ingrese el nombre]: '
	nombre = gets.chomp
	puts '-----------------'
	$carros.insert(indice.to_i, nombre.to_s)
	$carros.delete_at(indice.to_i+1)
end
def eliminar
	system "clear"
	puts '#1 Indice'
	puts '#2 Valor'
	opcion = gets.chomp.to_i
	if opcion == 1
		puts '[Ingrese el Indice]: '
		indice = gets.chomp.to_i
		$carros.delete_at(indice.to_i)
		puts '-----------------'
	elsif opcion == 2
		puts '[Ingrese el nombre]: '
		nombre = gets.chomp.to_s
		$carros.delete(nombre.to_s)
		puts '-----------------'
	end
end
def opciones
	puts '************************'
	puts '****** Bienvenido ******'
	puts '#1 Listar carros'
	puts '#2 Ver carro'
	puts '#3 Ingresar carro'
	puts '#4 Actualizar carro'
	puts '#5 Eliminar carro'
	puts '#6 Limpiar terminal'
	puts '#7 Salir'
	puts '-------------------------'
	puts '[Ingrese su opcion]:'
	opcion = gets.chomp.to_i
end

i = 0
 while i <= 0
	opcion = opciones
	if opcion == 1
		puts tienda
	elsif opcion == 2
		puts '[¿Que vehiculo quiere ver?]:'
		carro = gets.chomp
		ver(carro)
	elsif opcion == 3
		puts '[Nombre del vehiculo!]:'
		carro = gets.chomp.to_s
		ingresar(carro)
	elsif opcion == 4
		actualizar
	elsif opcion == 5
		eliminar
	elsif opcion == 6
		system "clear"
	elsif opcion == 7
		i = 1
	end
	puts '----------------------'
 end