Feature: Crear cuadricula del juego cruadrito
  Yo como jugador
  Quiero que se muestre la cuadricula del juego
  Para poder jugar

  Scenario Outline: Cantidad de lineas de la cuadriculas de tamaño
  	Given Cuando ingresa el tamaño de la "<cuadricula>"
  	When Este calcula la cantidad de lineas
  	Then Deberia retornar la cantidad de "<lineas>"

	  Examples:
	  	| cuadricula  | lineas |
	  	| 1*1         |	4      |
	  	| 2*2	      |	12     |
	  	| 3*3 	      |	24     |
	  	| 4*4 	      |	40     |
	  	| 5*5 	      |	60     |
	  	| 6*6 	      |	84     |
	  	| 7*7 	      |	112    |
	  	| 8*8 	      |	144    |
	  	| 9*9 	      |	180    |
	  	| 19*19	      |	760    |
	  	| 23*23	      |	1104   |
