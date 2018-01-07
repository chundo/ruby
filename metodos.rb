def saludo(nombre) #definicion de mi metodo
	puts "******* Bienvenido #{nombre} *******"	
end
#formas de definir los metodos def saludo, def saludo nombre o def saludo(nombre) => mas ordenado

saludo('Segundo') #saludo, saludo 'segundo' o saludo('segundo') invicando metodo #OJO es importante invicar


 if params[:year]
    
    @y.each do |t| 
       params[:year]['years'].each do |i|
         i.to_i == t
       end
      
    end

    @y.each {|y| params[:year]['years'].each { |p| p.to_i == y } }

    @y.map {|i| params[:year]['years'].include?(i.to_s)} 

  end