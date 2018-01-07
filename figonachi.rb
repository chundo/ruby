numeros = [1, 2]
numeros.map do |numero|
	if numeros.size <= 40
		puts numero
		numeros << numero.to_i + numeros[-1].to_i
	end
end