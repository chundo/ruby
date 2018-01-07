nombre = ['diego', 'lauren', 'claudia', 'carlos', 'alder', 'alfredo']
numeros = [1, 2, 3, 4, 5, 9, 7, 8]
seleccion = [5, 9]
puts nombre.include?('diego') #si incluye 
puts nombre.map { |i| "#{i} Good" } #igual al each y acualiza
puts nombre.map! { |i| "#{i} Good" } #guarda lo anterior
puts nombre
puts 5.even? #si es par o impar
puts numeros.map &(:even?) #recorrer y hacer consulta en este caso si es par o impar
puts numeros.reduce(:+) #suma los valores
puts numeros.reduce(10, :+) #suma incrementa valor a la suma

#funcion que permite buscar e imprimir el mayor
numeros.reduce do |first, second|
	if first > second
		first
	else
		second
	end
end

numeros.select {|i| i < 6} #retorna lista de elementos que son menos a 6
#numeros.select! {|i| i < 6} #alterar el valor del arreglo
puts '-----------------------------'
puts numeros.reject #retorna lista de elementos que son menos a 6
#puts numeros.reject! {|i| i < 6} #alterar el valor del arreglo
puts numeros.drop_while {|i| i < 6}
#alguno se puede dividir en 7
puts numeros.any? {|i| i % 7 == 0 }
#todos se pueden dividir en 7
puts numeros.all? {|i| i % 7 == 0 }
#devuelve elementos en comun
puts numeros & seleccion
#el doble de elementos
puts numeros * 2
#multiplicar por string
puts numeros * "ch"
#imprime el index y el valor
puts '-------------------------------'
numeros.each_with_index { |idx, val| puts idx, val}
#llamar elementos de un arreglo dentro de otro areglo
puts '-------------------------------'
arreglos = [1, 2, 3, 4, 5, [6, 7, [8, [9, [10,[11,[[12]]]]]]]]
puts arreglos.flatten
puts '-------------------------------'
hasha = {nombre: 'segundo'}
hashb = {apellido: 'espana'}
puts hasha[:nombre]
#mesclar 2 hast
puts hasha.merge(hashb)
#convertir hash en arreglo o arreglo en hash to_h
hasha.to_a
