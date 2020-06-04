Class {
	#name : #DatabaseAccessProxyTest,
	#superclass : #TestCase,
	#instVars : [
		'proxyDatabase',
		'authSystem'
	],
	#category : #'TP06-Proxy'
}

{ #category : #running }
DatabaseAccessProxyTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
authSystem := OAuth new.
proxyDatabase := DatabaseAccessProxy auth: authSystem.


]

{ #category : #tests }
DatabaseAccessProxyTest >> testCheckAccess [

self deny: (proxyDatabase checkAccess).
authSystem attemptAuth.
self assert: (proxyDatabase checkAccess)
]

{ #category : #tests }
DatabaseAccessProxyTest >> testGetSearchResults [

self deny: (proxyDatabase checkAccess).
self assert: (proxyDatabase getSearchResults: 'select * from comics where id=1') equals: 'The Client is not authorized'.
self assert: (proxyDatabase getSearchResults: 'select * from comics where id=2') equals: 'The Client is not authorized'.
authSystem attemptAuth.
self assert: (proxyDatabase checkAccess).
self assert: (proxyDatabase getSearchResults: 'select * from comics where id=1') equals: #('Spiderman' 'Marvel').
self assert: (proxyDatabase getSearchResults: 'select * from comics where id=2') equals: #('Batman' 'DC comics').
]

{ #category : #tests }
DatabaseAccessProxyTest >> testInsertNewRow [

self deny: (proxyDatabase checkAccess).
self assert: (proxyDatabase insertNewRow: #('Superman' 'DC')) equals: 'The Client is not authorized'.
authSystem attemptAuth.
self assert: (proxyDatabase checkAccess).
self assert: (proxyDatabase insertNewRow: #('Superman' 'DC')) equals: 3.
self assert: (proxyDatabase getSearchResults: 'select * from comics where id=3') equals: #('Superman' 'DC').

]
