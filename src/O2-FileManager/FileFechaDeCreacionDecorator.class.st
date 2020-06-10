Class {
	#name : #FileFechaDeCreacionDecorator,
	#superclass : #FileOO2Decorator,
	#category : #'O2-FileManager'
}

{ #category : #'menu commands' }
FileFechaDeCreacionDecorator >> prettyPrint [ 

^ super prettyPrint , self fechaDeCreacion.
]
