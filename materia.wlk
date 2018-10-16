class Materia{
	
	var curso
	var materiasAprobadas =[]
	var property carrera
	var property credito = 0
	var property anio = 2016
	
	method puedoCursar(_alumno){
	
	return (self.laMateriaEstaEnLaCarrera(_alumno) && !_alumno.laMateriaEstaInscripta(self) && self.cumpleLaCondicion(_alumno))
}
	method cumpleLaCondicion( _materia){return false}
	method laMateriaEstaEnLaCarrera(_alumno){
	return _alumno.materiasPorCarrerasInscipta().contains(self)
}


}

class MateriaAprobada{
	
	var property materia
	var property nota

	constructor (_materia, _nota){
	
		materia=_materia;
		nota=_nota
	}

}

class MateriasCorrelativas inherits Materia{
	var materiasNecesarias = []
	
	method agregarMateriaCorrelativas(_materia){
		materiasNecesarias.add(_materia)	
	}
	
override method cumpleLaCondicion (_materia){
		return materiasNecesarias.counts(_materia)
	}
}

class MateriasCreditos inherits Materia{

	var property creditos

	constructor (_creditos){	
		creditos=_creditos
	}
override method cumpleLaCondicion(_alumno){
		return _alumno.credito()> self.creditos()
	}
}

class MateriaPorAnio inherits Materia{
	var property condicionDeAnio
	
override method cumpleLaCondicion(_materia){
		return _materia.anio()>= self.condicionDeAnio()
	}
}

class MateriaNada{}

/*puedoCursar(materia) {return materiaAprobada.map({mat => map.materia()}.contain(_materia)
 * !materiasAprobada.any({mat=>mat.materia()==materia
 * !materiaIscriptos().contais(self)
 * materia.puedoCursar(self)
 * 
*/
