Class {
	#name : #TopografiaDeAguaTest,
	#superclass : #TopografiaTest,
	#category : #'O2-Topografias-Test'
}

{ #category : #running }
TopografiaDeAguaTest >> setUp [

super setUp.
]

{ #category : #tests }
TopografiaDeAguaTest >> testCompararConAgua [

self assert: (topoDeAgua1 compararConAgua: topoDeAgua2).
self deny: (topoDeAgua1 compararConAgua: topoDeTierra).
self deny: (topoDeAgua1 compararConAgua: topoMixta)
]

{ #category : #tests }
TopografiaDeAguaTest >> testSoyIgualA [

self assert: (topoDeAgua1 soyIgualA: topoDeAgua2).
self deny: (topoDeAgua1 soyIgualA: topoDeTierra).
self deny: (topoDeAgua1 soyIgualA: topoMixta).
]
