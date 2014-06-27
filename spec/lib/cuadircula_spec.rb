require "spec_helper"
require_relative "../../cuadricula"

describe Cuadricula do	 	
 	it "cacular lineas para una cuadricula 2*2" do
 		numeros = [2,2]
 		cuadricula = Cuadricula.new
 		cantidad_lineas = cuadricula.calcular_cantidad_lineas(numeros)
 		expect("12").to eq(cantidad_lineas)
  	end
  	it "cacular cantidad de cuadros en un eje para una cuadricula 2*2" do
  		numeros = ["2","2"]
 		cuadricula = Cuadricula.new
 		cantidad_cuadrados = cuadricula.cantidad_individual_de_cuadros("2*2")
 		expect(numeros).to eq(cantidad_cuadrados)
  	end
end