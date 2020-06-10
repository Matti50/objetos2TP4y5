Class {
	#name : #FileTamanioDecorator,
	#superclass : #FileOO2Decorator,
	#category : #'O2-FileManager'
}

{ #category : #'menu commands' }
FileTamanioDecorator >> prettyPrint [ 

^ super prettyPrint , self tamanio
]
