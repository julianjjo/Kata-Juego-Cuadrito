class Cuadricula
	def initialize;	end

	def calcular_cantidad_lineas(numeros)
		operacion = "(#{numeros[0]}+#{numeros[1]})*(#{numeros[0]}+1)"
		return eval(operacion).to_s
	end	

	def cantidad_de_lineas(cantidad_de_cuadros)
		numeros = Array.new
		numeros = cantidad_de_cuadros.split('*')
		return calcular_cantidad_lineas(numeros)
	end
end