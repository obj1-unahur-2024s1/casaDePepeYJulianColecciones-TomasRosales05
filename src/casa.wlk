import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)

object casaDePepeYJulian {
	
	var cosas = []
	method cosas() = return cosas
	method comprar(cosa) =  cosas.add(cosa)
	method cantidadDeCosasCompradas() = cosas.size()
	method tieneComida() = cosas.any({cosa => cosa.esComida()})
	method vieneDeEquiparse() = cosas.any({cosa => cosas.last().precio() > 50000  or cosa.esElectrodomestico()})
	method esDerrochona() = cosas.all({cosa => cosa.precio() > 90000})
	method compraMasCara() = cosas.max({cosa => cosa.precio()})
	method electrodomesticosComprados() = cosas.filter({cosa => cosa.esElectrodomestico()})
	method epocaMala() = cosas.all({cosa => cosa.esComida()})
	method queFaltaComprar(lista) = lista.difference(#{ cosas })
	method faltaComida(){
		var unaColeccion = (cosas.filter({cosa => cosa.esComida()}))
	 	return unaColeccion.size() < 2
	}

	
		

}
