// Concepto: Tuplas
// Uso: Una tupla permite agrupar varios valores en una sola variable. Los valores pueden ser de diferentes tipos.

// Ejemplo mínimo de tupla
let persona = ("Juan", 25) // Nombre y edad
print(persona.0) // Imprime "Juan"
print(persona.1) // Imprime 25

// Ejemplo: Tupla nombrada
let coordenada = (x: 10, y: 20)
print(coordenada.x) // Imprime 10
print(coordenada.y) // Imprime 20

// Ejemplo: Desempaquetar tupla en variables
let (nombre, edad) = persona
print(nombre) // Imprime "Juan"
print(edad)   // Imprime 25







// Concepto: Diccionarios
// Uso: Un diccionario almacena una colección de pares clave-valor. Se accede a los valores usando la clave.

// Ejemplo mínimo de diccionario
var capitales = ["España": "Madrid", "Francia": "París"]
print(capitales["España"]!) // Imprime "Madrid"

// Ejemplo: Añadir, modificar y borrar valores
capitales["Italia"] = "Roma" // Añade nuevo par clave-valor
capitales["Francia"] = "Lyon" // Modifica el valor de una clave existente
capitales.removeValue(forKey: "España") // Elimina una clave y su valor

// Ejemplo: Recorrer un diccionario
for (pais, ciudad) in capitales {
    print("La capital de \(pais) es \(ciudad)")
}

