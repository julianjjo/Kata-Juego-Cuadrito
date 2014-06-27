Feature: Crear cuadricula de dimensiones iguales del juego cruadrito
  Yo como jugador
  Quiero que se muestre la cuadricula del juego
  Para poder selecionar las lineas que quiero

  Scenario Outline: Cantidad de lineas de la cuadriculas de tamaño
  	Given Cuando ingresa el tamaño de la "<cuadricula>"
  	When Este calcula la cantidad de lineas
  	Then Deberia retornar la cantidad de "<lineas>"

	  Examples:
	  	| cuadricula  | lineas |
	  	|	1*1					|	4 		 |
	  	|	2*2					|	12		 |
	  	| 3*3 				|	24		 |
	  	| 4*4 				|	40		 |
	  	| 5*5 				|	60		 |
	  	| 6*6 				|	84		 |
	  	| 7*7 				|	112		 |
	  	| 8*8 				|	144		 |
	  	| 9*9 				|	180		 |
	  	| 19*19				|	760		 |
	  	| 23*23				|	1104	 |

  Scenario Outline: Calcular tamaño de linea en base al tamaño del lienzo de dimensiones iguales y pares
  	Given Cuando ingresa el tamaño de la "<cuadricula>" 
  	And El "<tamaño del lienzo>"
  	When calcula el tamaño de la linea
  	Then Deberia retornar el "<tamaño de la linea>"

	  Examples:
	  	| cuadricula  | tamaño del lienzo | tamaño de la linea | 
	  	|	1*1					|	100*100						| 100	               |
	  	|	2*2					|	600*600		  			| 300	               |
	  	| 3*3 				|	600*600		  			| 200	  						 | 
	  	| 4*4 				|	200*600		  			| 50	  						 |
	  	| 5*5 				|	600*600		  			| 120	  						 |
	  	| 6*6 				|	1200*1200	  			| 200	  						 |
	  	| 7*7 				|	1400*1400	 				| 200		 						 |
	  	| 8*8 				|	200*200		 				| 25		 						 | 
	  	| 9*9 				|	900*900		 				| 100		 	 					 |
	  	| 19*19				|	1900*1900		 			| 100		 	           |
	  	| 23*23				|	460*460	 					| 20  							 |

  Scenario: Calcular la ubicacion de los puntos de cada linea
  	Given Cuando ingresa el tamaño de la linea sea "100" 
  	And El tamaño del lienzo "600*600"
  	And El tamaño de la cuadricula "2*2"
  	When Este calcula la posiciones en 
  	Then Deberia retornar las posiciones:
			| linea 	| Xinicial | Yinicial | Xfinal | Yfinal |
			| 1				| 0				 | 0 	 			| 300  	 | 0  		|
			| 2 			| 300			 | 0        | 600	   | 0 			|
			| 3 			| 0				 | 0  			| 0   	 | 300 		|
			| 4 			| 0 			 | 300      | 0 	   | 600		|
			| 5 			| 300			 | 0 	 			| 300  	 | 300 		|
			|	6	  		| 300 		 | 300      | 300	   | 600		|
			| 7 			| 0 			 | 300      | 300	   | 300		|
			| 8 			| 300			 | 300      | 600	   | 300		|
			| 9 			| 600			 | 0        | 600	   | 300		|
			| 10 			| 600			 | 300      | 600	   | 600		|
			| 11 			| 0 			 | 600      | 300	   | 600		|
			| 12 			| 300			 | 600      | 600	   | 600		|