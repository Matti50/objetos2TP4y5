Class {
	#name : #NeoJsonAdapter,
	#superclass : #Exporter,
	#category : #'Biblioteca-Model'
}

{ #category : #exporting }
NeoJsonAdapter >> export: socios [

^ NeoJSONWriter toStringPretty: (socios collect: [:each | self exportSocio: each])

]

{ #category : #exporting }
NeoJsonAdapter >> exportSocio: aSocio [

^ Dictionary new at: 'nombre' put: aSocio nombre; 
	at: 'email' put: aSocio email; 
	at: 'legajo' put: aSocio legajo; yourself
]
