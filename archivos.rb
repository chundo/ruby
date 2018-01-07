#abro o creo y escribo en el archivo
archivo = File.open('Hola.txt', 'w')
archivo.puts "Hola chundo!\n"
archivo.puts "Quetal estas\n"
archivo.close
#leo el archivo
archivo_l = File.open('Hola.txt', 'r')
puts archivo_l.read
archivo_l.close

new_array = []
#recorro cada linea y invierto las las palabras
File.open("Hola.txt").readlines.each do |linea|
	new_array << linea.reverse
end
#imprimo y invierto las lineas
puts new_array.reverse