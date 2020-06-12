Class {
	#name : #DatabaseAccessProxy,
	#superclass : #DatabaseAccess,
	#instVars : [
		'realDatabase',
		'authSystem'
	],
	#category : #'TP06-Proxy'
}

{ #category : #accessing }
DatabaseAccessProxy class >> auth: anAuthSystem [

^ self new authSystem: anAuthSystem.
]

{ #category : #accessing }
DatabaseAccessProxy class >> database: aDatabase [

^ self new database: aDatabase .
]

{ #category : #accessing }
DatabaseAccessProxy >> authSystem: anAuthSystem [

authSystem := anAuthSystem
]

{ #category : #'private ' }
DatabaseAccessProxy >> checkAccess [

^ authSystem isAuth.
]

{ #category : #accessing }
DatabaseAccessProxy >> database: aDatabase [

realDatabase := aDatabase.
]

{ #category : #public }
DatabaseAccessProxy >> getSearchResults: queryString [
	"returns a dataTable with the results of the strings."
	
(self checkAccess) ifTrue: [ 
	
	^ realDatabase getSearchResults: queryString.
	 ].

^ 'The Client is not authorized'
]

{ #category : #initialization }
DatabaseAccessProxy >> initialize [

realDatabase := DatabaseRealAcess new.
authSystem := OAuth new.

]

{ #category : #public }
DatabaseAccessProxy >> insertNewRow: rowData [
	"Inserts in the database the row data"
	(self checkAccess) ifTrue: [ 
		^ realDatabase insertNewRow: rowData
		 ].
	
^ 'The Client is not authorized'
]
