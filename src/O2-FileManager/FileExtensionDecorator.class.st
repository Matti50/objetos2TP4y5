Class {
	#name : #FileExtensionDecorator,
	#superclass : #FileOO2Decorator,
	#category : #'O2-FileManager'
}

{ #category : #'menu commands' }
FileExtensionDecorator >> decorate [ 

^ self extension.
]
