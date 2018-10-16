class Estudiante{
	
	var matAprobadas= []
	var materiaInscripta = []
	var carrerasInsciptas = []
	

	method incribirseMaterias(_materia){
	
	if (!_materia.puedoCursar(self)) self.error ("No reune los requisitos")
	materiaInscripta.add(_materia)
}
	method agregarMateriaNotaAprobada (_materia, _nota){
		matAprobadas.add()//new MateriaAprobada(_materia,_nota))
	}
	
	method devolverMateriasAprobada(){
	return matAprobadas.map({mat => mat.materia()})
}
	method aproboEstaMateria(_materia){
	return self.devolverMateriasAprobada().contains(_materia)
}

	method agregarCarreras (_carrera){
	carrerasInsciptas.add (_carrera)
}

	method materiasPorCarrerasInscipta(){
	carrerasInsciptas.map({carrera => carrera.materiasDeCarrera() })
}

	method laMateriaEstaInscripta(_materia){
	materiaInscripta.contains(_materia)
}

}



 /*
  * De cada materia hay un único curso y el programa tiene sólo información de la
 inscripción actual, no nos interesan inscripciones anteriores. Debemos conocer el historial 
de materias aprobadas de un estudiante. De cada materia aprobada hay
 que saber qué materia aprobó y con qué nota.
 
  */