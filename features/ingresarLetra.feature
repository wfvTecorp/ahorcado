Feature: IngresarLetra
	Como Jugador
	Quiero ingresar una letra
	Para adivinar la palabra

	Scenario: Ingresa la letra
		Given visito la pagina principal
		When ingreso "Pepino" en el campo "palabra"
		 And presiono el boton "Ingresar"
		Then deberia ver la palabra "Palabra de 6 caracteres"
		When ingreso "P" en el campo "palabra"
		And presiono el boton "Jugar"
		Then deberia ver la palabra "<div class='letra'>P</div>"


