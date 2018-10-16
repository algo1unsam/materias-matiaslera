class Carrera {
	
	var materiasDeLaCarrera =[]
	
	method seEncuentraEsta(materia){
		return materiasDeLaCarrera.found(materia)
	}
	
	method agregarMateria(_materia){
	materiasDeLaCarrera.add(_materia)
	}

	method materiasDeLaCarrera() = materiasDeLaCarrera
	
}
