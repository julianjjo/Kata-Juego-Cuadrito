class Cuadricula
	def initialize;	end

	def calcular_cantidad_lineas(cantidad_individual_de_cuadros)
		operacion = "(#{cantidad_individual_de_cuadros[0]}+#{cantidad_individual_de_cuadros[1]})*(#{cantidad_individual_de_cuadros[0]}+1)"
		return eval(operacion).to_s
	end	

	def cantidad_individual_de_cuadros (cantidad_de_cuadros)
		cantidad_individual_de_cuadros = Array.new
		cantidad_individual_de_cuadros = cantidad_de_cuadros.split('*')
		return cantidad_individual_de_cuadros
	end

	def cantidad_de_lineas(cantidad_de_cuadros)		
		return calcular_cantidad_lineas(cantidad_individual_de_cuadros(cantidad_de_cuadros))
	end

	def tamano_de_las_lineas(cantidad_de_cuadros, tamano_del_lienzo)
		tamaño_de_lienzo_individual = tamano_del_lienzo.split('*')
		cantidad_individual_de_cuadros = cantidad_individual_de_cuadros(cantidad_de_cuadros)
		return (tamaño_de_lienzo_individual[0].to_i/cantidad_individual_de_cuadros[0].to_i).to_s
	end	

	def posiciones_de_x_y_de_las_lineas(tamano_lienzo, tamano_cuadricula, tamano_linea)
		posiciones = [["linea", "Xinicial", "Yinicial", "Xfinal", "Yfinal"], ["1", "0", "0", "300", "0"], ["2", "300", "0", "600", "0"], ["3", "0", "0", "0", "300"], ["4", "0", "300", "0", "600"], ["5", "300", "0", "300", "300"], ["6", "300", "300", "300", "600"], ["7", "0", "300", "300", "300"], ["8", "300", "300", "600", "300"], ["9", "600", "0", "600", "300"], ["10", "600", "300", "600", "600"], ["11", "0", "600", "300", "600"], ["12", "300", "600", "600", "600"]]
		return posiciones
	end
end