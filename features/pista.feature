Feature: IngresarPista
	Como Jugador
	Quiero ingresar una pista
	Para que otro jugador la utilice si quiere

	Scenario: Define la pista
		Given visito la pagina principal
		When ingreso "Pepino" en el campo "palabra"
		 And ingreso "hortaliza" en el campo "pista"
		 And presiono el boton "Ingresar"
		Then deberia ver la palabra "Que comience el juego"
