import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)

object casaDePepeYJulian {
	
	var cosas = []
	var cuentaCorriente = 0
	method cosas() = return cosas
	method comprar(cosa) =  cosas.add(cosa)
	method cantidadDeCosasCompradas() = cosas.size()
	method tieneComida() = cosas.any({cosa => cosa.esComida()})
	method vieneDeEquiparse() = cosas.any({cosa => cosas.last().precio() > 50000  or cosa.esElectrodomestico()})
	method esDerrochona() = cosas.all({cosa => cosa.precio() > 90000})
	method compraMasCara() = cosas.max({cosa => cosa.precio()})
	method electrodomesticosComprados() = cosas.filter({cosa => cosa.esElectrodomestico()})
	method epocaMala() = cosas.all({cosa => cosa.esComida()})
	method queFaltaComprar(lista){
		var unaColeccion = cosas.difference( {lista} )
		return unaColeccion
		}
	method faltaComida(){
		var unaColeccion = cosas.filter({cosa => cosa.esComida()})
	 	return unaColeccion.size() < 2
	}
	method depositar(importe){ 
		if (importe > 200){
			cuentaCorriente = (cuentaCorriente + importe) - 200
			0.max(cuentaCorriente)
			return 'su importe fue depocitado con exito'
			}
		else {return 'su importe debe ser mayor a 200 pesos'}
		}
	method extraer(importe){
		if (10000 <= importe ){
		cuentaCorriente = (cuentaCorriente - importe) - 200  
		0.max(cuentaCorriente)	
		}
		else {
		cuentaCorriente = cuentaCorriente - importe - (cuentaCorriente * 0.2)
		0.max(cuentaCorriente)	
		}
	}
	method saldo() = return cuentaCorriente

}
