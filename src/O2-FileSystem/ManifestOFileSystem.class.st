"
Acá se van a poner los puntos que son teoricos (el 2 y el 6)

2) En Collection, size y anyOne: usan #do:. En dicha clase, el metodo delega la responsabilidad a sus subclases. 
En Maginitude: el único método que se asemeja al patrón son = y hash 

Otros ejemplos en Smalltalk pueden ser en la clase TestCase con runCase y

6) 
1) Corresponde al patrón Template Method
2) Las partes ""hook"" las implementamos nosotros cuadno definimos los setUp tearDown y los propios test. 
3) Lo ejecutamos nosotros la hacer click en el globo para ejectuar el test. 
4) La clase TestCase cumple el rol de la clase abstracta y las clases que implementamos nosotros que son hijas de esta son las clases concretas.

"
Class {
	#name : #ManifestOFileSystem,
	#superclass : #PackageManifest,
	#category : #'O2-FileSystem-Manifest'
}
