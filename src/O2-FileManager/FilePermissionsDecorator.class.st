Class {
	#name : #FilePermissionsDecorator,
	#superclass : #FileOO2Decorator,
	#category : #'O2-FileManager'
}

{ #category : #'menu commands' }
FilePermissionsDecorator >> prettyPrint [ 

^ super prettyPrint , self permisos.
]
