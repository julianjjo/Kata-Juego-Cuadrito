require "spec_helper"
require_relative "../../cuadricula"

describe Cuadricula do	 	
 	it "cacular lineas para una cuadricula dos por dos" do
 		numeros = [2,2]
 		cuadricula = Cuadricula.new
 		cantidad_cuadrados = cuadricula.calcular_cantidad_lineas(numeros)
 		expect("12").to eq(cantidad_cuadrados)
  	end
end