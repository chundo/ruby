#mi solucion
def es_par?(numero)
	if numero % 2 == 0
		puts "El numero #{numero} es par!"
	else
		puts "El numero #{numero} es impar"
	end
end
#puts 'Ingrese su numero: '
#numero = gets.chomp.to_i
#es_par?(numero)
#---------------------------IGUAL
def es_parr?(numero)
	numero % 2 == 0
end
def respuesta(numero)
	if es_parr?(numero)
		puts 'Es parr'
	else
		puts 'Es imparr'
	end 	
end
puts 'Ingrese el numerro: '
numero = gets.chomp.to_i
respuesta(numero)
