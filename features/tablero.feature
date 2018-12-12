Feature: TableroPalabra
	Como Jugador
	Quiero usar el tablero de palabras
	Para adivinar la palabra

	Scenario: Dibujar tablero
		Given visito la pagina principal
		When ingreso "Pepino" en el campo "palabra"
		 And presiono el boton "Ingresar"
		Then deberia ver la palabra "Palabra de 6 caracteres"
		
	
