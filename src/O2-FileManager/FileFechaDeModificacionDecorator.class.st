Class {
	#name : #FileFechaDeModificacionDecorator,
	#superclass : #FileOO2Decorator,
	#category : #'O2-FileManager'
}

{ #category : #'menu commands' }
FileFechaDeModificacionDecorator >> prettyPrint [

^ super prettyPrint, self fechaDeModificacion.
]
