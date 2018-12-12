Feature: Ingresar Letra
	Como Jugador
	Quiero ingresar una letra
	Para adivinar la palabra secreta

	Scenario: Ingresar la Letra
		Given visito la pagina de Juego
		When ingreso una letra "e" en el campo de "palabra"
		 And presiono el boton para "Jugar"
		Then deberia verificar si existe la letra en la "palabra"

