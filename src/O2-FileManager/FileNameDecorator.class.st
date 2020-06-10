Class {
	#name : #FileNameDecorator,
	#superclass : #FileOO2Decorator,
	#category : #'O2-FileManager'
}

{ #category : #'menu commands' }
FileNameDecorator >> prettyPrint [

^ super prettyPrint , self nombre. 
]
