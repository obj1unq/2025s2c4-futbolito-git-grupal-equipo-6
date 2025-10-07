/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	var tieneLaTitular = true
	
	method image() {
		return if (tieneLaTitular) "lionel-titular.png" else "lionel-suplente.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method cambiarCamiseta(){
		if (self.position().x() == 0){
			tieneLaTitular = not tieneLaTitular
		}
	}
	
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	
}
