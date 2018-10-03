import universidades.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
	
	method cobrarImporteDeDinero(monto) { self.asociacionDeProfesionalesDelLitoral().totalRecaudado(monto) }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad 
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return universidad.provincia() }
	
	method honorariosPorHora() { return universidad.honorariosPorHora() }
	
	method cobrarImporteDeDinero(monto) { universidad.montoTotalDonado(monto / 2) }
	
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	
	var property provinciasDondePuedeTrabajar
	var property honorariosPorHora
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method pasarDinero(persona,monto) {
		
	}

}

object asociacionDeProfesionalesDelLitoral {
	var property totalRecaudado = totalRecaudado + monto
	}

