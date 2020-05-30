Class {
	#name : #DirectorioTest,
	#superclass : #TestCase,
	#instVars : [
		'vacio',
		'conUnArchivo',
		'conVariosArchivos',
		'conSubdirectorios',
		'config',
		'grande',
		'backup2015',
		'conSubdirectorios2'
	],
	#category : #'O2-FileSystem'
}

{ #category : #'as yet unclassified' }
DirectorioTest class >> llamado: nombre creadoEl: date [

^ self new initialize:nombre creado: date.
]

{ #category : #running }
DirectorioTest >> setUp [
	| date |
	date := '2015-01-01'.
	"Directorio vac√≠o"
	vacio := Directorio llamado: 'home' creadoEl: date .	"Directorio con un solo archivo"
	conUnArchivo := Directorio llamado: 'var' creadoEl: date.
	config := Archivo llamado: 'config.bak' creadoEl: '2016-04-02' asDate kBytes: 128.
	conUnArchivo agregar: config.	"Directorio con varios archivos, pero sin subdirectorios"
	conVariosArchivos := Directorio llamado: 'tmp' creadoEl: date.
	grande := Archivo llamado: 'grande.tmp' creadoEl: '2016-04-02' asDate kBytes: 2000000.
	conVariosArchivos
		agregar: (Archivo llamado: 'nada.tmp' creadoEl: '2015-05-01' asDate kBytes: 0);
		agregar: (Archivo llamado: 'chico.tmp' creadoEl: '2013-06-03' asDate kBytes: 10);
		agregar: grande;
		agregar: (Archivo llamado: 'mediano.tmp' creadoEl: '1995-11-23' asDate kBytes: 10000).	"Directorio con subdirectorios, archivos, y archivos dentro de los subdirectorios"
	conSubdirectorios := Directorio llamado: 'log' creadoEl: date.
	backup2015 := Archivo llamado: '2015.zip' creadoEl: '2016-04-06' asDate kBytes: 240000000.
	conSubdirectorios
		agregar: (Archivo llamado: 'sys.log' creadoEl: '2016-03-03' asDate kBytes: 90000);
		agregar:
				((Directorio llamado: 'mysql' creadoEl: date)
						agregar: (Archivo llamado: 'mysql01.log' creadoEl: '2015-12-03' asDate kBytes: 1200000);
						agregar: (Archivo llamado: 'mysql02.log' creadoEl: '2014-03-03' asDate kBytes: 2000000);
						agregar: (Archivo llamado: 'mysql03.log' creadoEl: '2013-03-21' asDate kBytes: 2000000);
						agregar: (Archivo llamado: 'mysql04.log' creadoEl: '2014-07-15' asDate kBytes: 2000000);
						agregar:
								((Directorio llamado: 'older' creadoEl: date)
										agregar: backup2015;
										yourself);
						yourself);
		agregar:
				((Directorio llamado: 'postgres' creadoEl: date)
						agregar: (Archivo llamado: 'pg01.log' creadoEl: '2015-04-12' asDate kBytes: 1400000);
						agregar: (Archivo llamado: 'pg02.log' creadoEl: '2016-03-08' asDate kBytes: 4000000);
						agregar: (Archivo llamado: 'pg03.log' creadoEl: '2016-02-13' asDate kBytes: 4000000);
						yourself).
						
					
	conSubdirectorios2 := Directorio llamado: 'miDire' creadoEl: date.
	conSubdirectorios2 agregar: 
		((Directorio llamado: 'midire2' creadoEl: date)
			agregar: (Archivo llamado: 'file1' creadoEl: '2020-05-27' asDate kBytes: 10000);
			agregar: (Archivo llamado: 'file2' creadoEl: '2019-05-27' asDate kBytes: 50000);
			agregar: (Archivo llamado: 'file3' creadoEl: '2018-05-27' asDate kBytes: 80000)
		).
		conSubdirectorios2 agregar: 
		((Directorio llamado: 'midire3' creadoEl: date)
			agregar: (Archivo llamado: 'file4' creadoEl: '2016-08-29' asDate kBytes: 10000);
			agregar: (Archivo llamado: 'file5' creadoEl: '2014-05-13' asDate kBytes: 100000);
			agregar: (Archivo llamado: 'file6' creadoEl: '1999-08-29' asDate kBytes: 234500);
			agregar:
				((Directorio llamado: 'directorioMuyInterno' creadoEl: date)
				agregar: (Archivo llamado: 'elMasGrande' creadoEl: '2020-05-27' asDate kBytes: 50000000);
				agregar: (Archivo llamado: 'chiquito' creadoEl: '2010-07-19' asDate kBytes: 7000);
				agregar: (Archivo llamado: 'masChiquito' creadoEl: '2011-06-20' asDate kBytes: 345)
			)
		).
]

{ #category : #tests }
DirectorioTest >> testAgregar [

self assert: (vacio contenido isEmpty).
vacio agregar: grande.
self assert: (vacio contenido includes: grande).
self assert: (conUnArchivo contenido isNotEmpty).
conUnArchivo agregar: grande.
self assert: (conUnArchivo contenido includes: grande).
"Entiendo que el test queda acoplado al size de la colección en el siguiente assert. Sin embargo está hecho con el propósito de demostrar que
efectivamente la colección luego de agregar un archivo tiene 2 archivos"
self assert: (conUnArchivo contenido size) equals: 2.
]

{ #category : #tests }
DirectorioTest >> testArchivoMasGrande [

self assert: (vacio contenido isEmpty).
"self should: (vacio archivoMasGrande) raise: Error."
self assert: (conUnArchivo archivoMasGrande) nombre equals: 'config.bak'.
self assert: (conVariosArchivos archivoMasGrande) nombre equals: 'grande.tmp'.
self assert: (conSubdirectorios archivoMasGrande) nombre equals: '2015.zip'.
self assert: (conSubdirectorios2 archivoMasGrande) nombre equals: 'elMasGrande'.

]

{ #category : #tests }
DirectorioTest >> testArchivoMasNuevo [

self assert: (vacio contenido isEmpty).
"self should: (vacio archivoMasNuevo ) raise: Error."
self assert: (conUnArchivo archivoMasNuevo) fechaDeCreacion equals: '2016-04-02' asDate.
self assert: (conVariosArchivos archivoMasNuevo ) fechaDeCreacion equals: '2016-04-02' asDate.
self assert: (conSubdirectorios archivoMasNuevo ) fechaDeCreacion equals: '2016-04-06' asDate.
self assert: (conSubdirectorios2 archivoMasNuevo) fechaDeCreacion equals: '2020-05-27' asDate.
]

{ #category : #running }
DirectorioTest >> testListadoDeContenido [
	| listado listadoStream|
	self assert: vacio listadoDeContenido equals: '/home'.
	self assert: conUnArchivo listadoDeContenido equals: '/var (1 archivos)'.
	self assert: conVariosArchivos listadoDeContenido equals: '/tmp (4 archivos)'.
	listadoStream := WriteStream on: String new.
	listadoStream << '/log (1 archivos)'; cr.
	listadoStream << '/log/mysql (4 archivos)'; cr.
	listadoStream << '/log/mysql/older (1 archivos)'; cr.
	listadoStream << '/log/postgres (3 archivos)'.
	listado := listadoStream contents.
	self assert: conSubdirectorios listadoDeContenido = listado
]

{ #category : #tests }
DirectorioTest >> testTamanoTotalOcupado [

self assert: (vacio contenido isEmpty).
self assert: (vacio tamanio) equals: 32.
self assert: (conUnArchivo contenido isNotEmpty).
self assert: (conUnArchivo tamanio) equals: 160.
self assert: (conVariosArchivos tamanio) equals: 2010042. 
self assert: (conSubdirectorios tamanio)equals: 256690128.
]
