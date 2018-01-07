marcas = []
#insertar
marcas << 'zara' 
marcas << 'adidas'
marcas.push('nike') #lo agrega en el ultimo
marcas.unshift('gef') #lo agrega en el primero
marcas.insert(2, 'puma')
#eliminar
marcas.pop #elimina el ultimo
marcas.shift #elimina el primero
marcas.delete_at(3) #elimina por indicew
marcas.delete(2) #elimina por valor
marcas.uniq #elimina elementos repetidos
marcas.uniq! #hacer que permanescan los cambios
#ver 
marcas[1]
marcas[0..2]
marcas.first #primer elemento
marcas.last #ultimo elemento
marcas.take(2) #los 2 primeros elementos
marcas.drop(2) #los ultimos 2 elementos 

marcas.each do |marca|
	puts marca #quita los elementos repetidos
end

for marca in marcas #igual al each - poco se usa en ruby
	puts marca
end

 i = 0
 while i < marcas.size
 	puts marcas[i]
 	i += 1	
 end

 o = 0
 intento = 10
 while o <= 0
 	puts 'Ingrese su numero'
 	numero = gets.chomp.to_i
 	if numero == 0
 		o = 1
 	else
 		intento -=1
 		puts "Tiene #{intento} intentos mas"
 		if intento == 0
 			o = 1
 		end
 	end
 end