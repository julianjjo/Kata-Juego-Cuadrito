require_relative "../../cuadricula"

Given(/^Cuando ingresa el tamaño de la "(.*?)"$/) do |entrada|
  @entrada = entrada
end

When(/^Este calcula la cantidad de lineas$/) do
  cuadricula = Cuadricula.new
	@salida = cuadricula.cantidad_de_lineas(@entrada)
end

Then(/^Deberia retornar la cantidad de "(.*?)"$/) do |se_espera|
  expect(@salida).to eq(se_espera)
end
