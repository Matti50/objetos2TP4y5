"
https://drive.google.com/file/d/1XhA3mwg0OAH8u8eq2Oddcix66KQhF5_I/view?usp=sharing
"
Class {
	#name : #DatabaseAccess,
	#superclass : #Object,
	#category : #'TP06-Proxy'
}

{ #category : #public }
DatabaseAccess >> getSearchResults: queryString [
	"returns a dataTable with the results of the strings."
	
self subclassResponsibility .
]

{ #category : #public }
DatabaseAccess >> insertNewRow: rowData [
	"Inserts in the database the row data"
	self subclassResponsibility .
]
