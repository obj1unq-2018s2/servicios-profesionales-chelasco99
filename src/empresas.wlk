import profesionales.*
import universidades.*

class Empresa {
	var property profesionales = []
	var property honorarioDeReferencia
	
	method agregarProfesionales(profesional) {
		profesionales.add(profesional)
	}
	
	method profesionalesMasCaros() {
		return profesionales.filter { profesional => profesional.honorariosPorHora() > honorarioDeReferencia }
	}
	
	method universidadesDeProfesionales() {
		return profesionales.map { profesional => profesional.universidad() }.asSet()
	}
	
	method profesionalMasBarato() {
		return profesionales.min { profesional => profesional.honorariosPorHora() }
	}
	
	method provinciaCubierta(provincia) {	 
        return profesionales.any { profesional => profesional.provinciasDondePuedeTrabajar() == provincia }	
	 }
	 
	method mismaUniversidad(universidad) {
		return profesionales.count { profesional => profesional.universidad() == universidad }
	}
}	
	

