class Persona {
	var property celulas = 3000000
	var property temperatura = 36
	const property enfermedades = #{}
	
	method contraerEnfermedad(enfermedad) { if(enfermedades.size() < 5) enfermedades.add(enfermedad) }
	method curarEnfermedad(enfermedad) { enfermedades.remove(enfermedad) }
	method pasarDia() {
		enfermedades.forEach({enfermedad => enfermedad.hacerEfecto(self)})
	}
	method enfermedadesAgresivas() {
		const enfermedadesAgresivas = enfermedades.filter({e => e.esAgresiva(self)})
		return enfermedadesAgresivas.sum{e => e.celulasAmenazadas()}
	}
	method estaEnComa() = (temperatura >= 45) or (celulas < 1000000)
	method recibirMedicamento(cantidad) {
		enfermedades.forEach{e => e.atenuarse(cantidad * 15)}
	}
}
class MedicoJefeDepartamento inherits Medico {
	const subordinados = #{}
	
	method agregarSubordinado(medico) { subordinados.add(medico)}
	method echarSubordinado(medico) { subordinados.remove(medico)}
	override method atender(persona) {
		persona.recibirMedicamento(subordinados.anyOne().medicamento())
	}
}

class Medico inherits Persona {
	var property medicamento = 100
	
	method atender(persona) {
		persona.recibirMedicamento(medicamento)
	}
}

class Enfermedad {
	var property celulasAmenazadas
	
	method atenuarse(cantidad) {
		celulasAmenazadas -= cantidad
	}
	
}

class EnfermedadInfecciosa inherits Enfermedad {
	
	method reproducirse() { celulasAmenazadas *= 2 }
	method hacerEfecto(persona) {
		persona.temperatura(persona.temperatura() + (celulasAmenazadas/1000))
	}
	method tipoDeEnfermedad() = "Enfermedad Infecciosa"
	method esAgresiva(persona) = celulasAmenazadas > (persona.celulas() * 0.1)
}

class EnfermedadAutoinmune inherits Enfermedad {
	var dias = 0
	
	method hacerEfecto(persona) {
		persona.celulas(persona.celulas() - celulasAmenazadas)
		dias += 1
	}
	method tipoDeEnfermedad() = "Enfermedad Autoinmune"
	method esAgresiva(persona) = dias > 30
}