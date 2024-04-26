// Como ya sabemos crear objetos y definir algunos métodos simples, 
// algunos los tenemos parcialmente definidos. Completar todo los demás
// para satisfacer lo que pide el enunciado.

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesa {
	method precio() { return 26000 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object botellaDeSalsaDeTomate {
	method precio() { return 900 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 42000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cebolla {
	method precio() { return 250 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object kiloDeCebolla {
	method precio() { return 26000 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object packComida {
	var comida = [tiraDeAsado,paqueteDeFideos, milanesa]
	var aderezos = [botellaDeSalsaDeTomate,kiloDeCebolla]
	method precio() {
		var coleccionPrecio = []
		coleccionPrecio.add(comida.anyOne())
		coleccionPrecio.add(aderezos.anyOne())
		return coleccionPrecio.sum({ cosa => cosa.precio()})
	}
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object computadora {
	method precio() { return 500 * dolar.precioVenta() }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object dolar {
	method precioVenta(){
		return 1050
	}
}







