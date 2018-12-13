Feature: IngresarLetra
	Como Jugador
	Quiero ingresar una letra
	Para adivinar la palabra

Scenario: Ingresa la letra (Perdiste)
		Given visito la pagina principal
		When ingreso "hola" en el campo "palabra"
		 And presiono el boton "Ingresar"
		Then deberia ver la palabra "Palabra de 4 caracteres"
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

Scenario: Ingresa la letra
		Given visito la pagina principal
		When ingreso "hola" en el campo "palabra"
		 And presiono el boton "Ingresar"
		Then deberia ver la palabra "Palabra de 4 caracteres"
		When ingreso "H" en el campo "palabra"
		And presiono el boton "Jugar"
		Then deberia ver la palabra "<div class='letra'>H</div>"
		When ingreso "O" en el campo "palabra"
		And presiono el boton "Jugar"
		Then deberia ver la palabra "<div class='letra'>O</div>"
		When ingreso "L" en el campo "palabra"
		And presiono el boton "Jugar"
		Then deberia ver la palabra "<div class='letra'>L</div>"
		When ingreso "A" en el campo "palabra"
		And presiono el boton "Jugar"
		Then deberia ver la palabra "<h1>Ganaste!!</h1>"

	


