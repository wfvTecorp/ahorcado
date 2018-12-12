Feature: Mostrar Palabra
	Como Jugador
	Quiero ver la letra si acerte
	Para saber que campos faltan llenar y adivinar la palabra

	Scenario: Mostrar Palabra
		Given visito la pagina principal
		When ingreso "Pepino" en el campo "palabra"
		 And presiono el boton "Ingresar"
		#Then deberia ver la palabra "Palabra de 6 caracteres"
                Then deberia ver la palabra "<div class='letra'>o</div>"
		
