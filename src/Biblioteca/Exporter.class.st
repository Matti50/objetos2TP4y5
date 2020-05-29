Class {
	#name : #Exporter,
	#superclass : #Object,
	#category : #'Biblioteca-Model'
}

{ #category : #exporting }
Exporter >> export: socios [

self subclassResponsibility.
]

{ #category : #exporting }
Exporter >> exportSocio: aSocio [

self subclassResponsibility.
]
