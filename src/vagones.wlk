class VagonesDePasajeros {
	const property largo
	const property ancho
	const property tieneBanios
	var property estaOrdenado = true
	
	
	method estaOrdenado() = estaOrdenado
	method cantidadDePasajeros() {
		const pasajeros = if(ancho <= 3){largo * 8}else{largo *10}
		return if(not estaOrdenado){0.max(pasajeros -15)}else{pasajeros}
	}
	method cargaMaxima()=if (not tieneBanios){return 300}else{return 800}
	method pesoMaximo(){
		return 2000 + (80*self.cantidadDePasajeros()) + self.cargaMaxima()
	}
}


class VagonesDeCarga{
	var property maderasSueltas 
	const property cargaMaximaIdeal  
	
	
	method cargaMaxima() = 0.max(cargaMaximaIdeal - (maderasSueltas * 400)
	
	method pasajeros() = 0
	method tieneBanios() =  false
	method pesoMaximo(){
		return 1500 + self.cargaMaxima()
	}
}

class VagonesDormitorio{
	const property cantidadCompartimientos
	var property cantidadCamas
	
	method tieneBanios() = true
	method cargaMaxima() = 1200
	method cantidadDePasajeros() = cantidadCompartimientos * cantidadCamas
	method pesoMaximo() = 4000 + 80 * self.cantidadDePasajeros() + self.cargaMaxima()
}