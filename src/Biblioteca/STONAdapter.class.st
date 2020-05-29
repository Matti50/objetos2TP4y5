Class {
	#name : #STONAdapter,
	#superclass : #Exporter,
	#category : #Biblioteca
}

{ #category : #exporting }
STONAdapter >> export: socios [

STON toStringPretty: socios.

]

{ #category : #exporting }
STONAdapter >> exportSocio: aSocio [

STON toStringPretty: aSocio.
]
