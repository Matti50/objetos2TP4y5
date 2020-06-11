Class {
	#name : #FileFechaDeModificacionDecorator,
	#superclass : #FileOO2Decorator,
	#category : #'O2-FileManager'
}

{ #category : #'menu commands' }
FileFechaDeModificacionDecorator >> decorate [
^ self fechaDeModificacion.
]
