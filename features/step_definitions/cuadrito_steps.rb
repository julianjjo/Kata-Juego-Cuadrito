require_relative "../../cuadricula"

Given(/^Cuando ingresa el tamaño de la "(.*?)"$/) do |entrada|
  @entrada = entrada
end

When(/^Este calcula la cantidad de lineas$/) do
  cuadricula = Cuadricula.new
  @cantidad = cuadricula.cantidad_de_lineas(@entrada)
end

Then(/^Deberia retornar la cantidad de "(.*?)"$/) do |se_espera|
  expect(@cantidad).to eq(se_espera)
end

Given(/^El "(.*?)"$/) do |entrada|
  @entrada1 = entrada
end

When(/^calcula el tamaño de la linea$/) do
  cuadricula = Cuadricula.new
  @tamaño = cuadricula.tamano_de_las_lineas(@entrada, @entrada1)
end

Then(/^Deberia retornar el "(.*?)"$/) do |se_espera|
  expect(@tamaño).to eq(se_espera)
end

Given(/^Cuando ingresa el tamaño del lienzo "([^"]*)"$/) do |tamano_lienzo|
  @tamano_lienzo = tamano_lienzo
end

Given(/^El tamaño de la cuadricula "(.*?)"$/) do |tamano_cuadricula|
  @tamano_cuadricula = tamano_cuadricula
end

When(/^Este calcula la posiciones en$/) do
  cuadricula = Cuadricula.new
  @posiciones = cuadricula.posiciones_de_x_y_de_las_lineas(@tamano_lienzo, @tamano_cuadricula)
end

Then(/^Deberia retornar las posiciones:$/) do |se_espera_la_tabla|
  se_espera_la_tabla.diff!(@posiciones)
end
