Feature: Reiniciar
	Como Jugador
	Quiero reiniciar el juego
	Para volver a jugar

	Scenario: Reiniciar Juego
		Given visito la pagina principal
		When ingreso "Pepino" en el campo "palabra"
		 And ingreso "hortaliza" en el campo "pista"
		 And presiono el boton "Ingresar"
		Then deberia ver la palabra "Que comience el juego"
		When presiono el link "Reiniciar"
		Then deberia ver la palabra "Ingresar Palabra"

	Scenario: Reiniciar Juego desde Resultado
		Given visito la pagina principal
		When ingreso "hola" en el campo "palabra"
		 And ingreso "hortaliza" en el campo "pista"
		 And presiono el boton "Ingresar"
		Then deberia ver la palabra "Que comience el juego"
		When ingreso "H" en el campo "palabra"
		And presiono el boton "Jugar"
		Then deberia ver la palabra "<div class='letra'>H</div>"
		When ingreso "M" en el campo "palabra"
		And presiono el boton "Jugar"
		Then deberia ver la palabra "<div class='letra'>H</div>"
		When ingreso "M" en el campo "palabra"
		And presiono el boton "Jugar"
		Then deberia ver la palabra "<div class='letra'>H</div>"
		When ingreso "M" en el campo "palabra"
		And presiono el boton "Jugar"
		Then deberia ver la palabra "<div class='letra'>H</div>"
		When ingreso "M" en el campo "palabra"
		And presiono el boton "Jugar"
		Then deberia ver la palabra "<div class='letra'>H</div>"
		When ingreso "M" en el campo "palabra"
		And presiono el boton "Jugar"
		Then deberia ver la palabra "<div class='letra'>H</div>"
		When ingreso "M" en el campo "palabra"
		And presiono el boton "Jugar"
		Then deberia ver la palabra "<h1>Perdiste</h1>"
		When presiono el link "Reiniciar"
		Then deberia ver la palabra "Ingresar Palabra"
		

