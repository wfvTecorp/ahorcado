Feature: IngresarPalabra
	Como Jugador
	Quiero ingresar una palabra
	Para que otro jugador la adivine

	Scenario: Define la palabra
		Given visito la pagina principal
		When ingreso "Pepino" en el campo "palabra"
		 And presiono el boton "Ingresar"
		Then deberia ver la palabra "Que comience el juego"



