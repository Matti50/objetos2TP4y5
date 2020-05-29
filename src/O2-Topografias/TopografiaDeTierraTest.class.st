Class {
	#name : #TopografiaDeTierraTest,
	#superclass : #TopografiaTest,
	#category : #'O2-Topografias-Test'
}

{ #category : #running }
TopografiaDeTierraTest >> setUp [

super setUp.
]

{ #category : #tests }
TopografiaDeTierraTest >> testCompararConTierra [

self deny: (topoDeTierra compararConTierra: topoDeAgua2).
self assert: (topoDeTierra compararConTierra: topoDeTierra).
self deny: (topoDeTierra compararConTierra: topoMixta)
]

{ #category : #tests }
TopografiaDeTierraTest >> testSoyIgualA [

self deny: (topoDeTierra  soyIgualA: topoDeAgua2).
self assert: (topoDeTierra2 soyIgualA: topoDeTierra).
self deny: (topoDeTierra soyIgualA: topoMixta).
]
