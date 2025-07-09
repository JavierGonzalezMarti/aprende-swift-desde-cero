import UIKit

// --------------------------------------------
// 1. Declaración de constantes básicas
// --------------------------------------------
let nombre = "Javi"
let edad = 30
let altura = 1.78
let esEstudiante = false

print("Nombre: \(nombre)")
print("Edad: \(edad)")
print("Altura: \(altura)")
print("¿Es estudiante? \(esEstudiante)")

// --------------------------------------------
// 2. Intentar cambiar el valor de una constante (error)
// --------------------------------------------
// edad = 31  // ❌ Esto da error porque 'edad' es una constante

// --------------------------------------------
// 3. Operaciones con constantes numéricas
// --------------------------------------------
let ancho = 20
let alto = 15
let area = ancho * alto
print("Área del rectángulo: \(area)")

// --------------------------------------------
// 4. Uso de constantes en cálculos matemáticos
// --------------------------------------------
let radio = 5.0
let pi = 3.1416
let areaCirculo = pi * radio * radio
print("Área del círculo: \(areaCirculo)")

// --------------------------------------------
// 5. Concatenación con constantes de texto
// --------------------------------------------
let saludo = "Hola"
let usuario = "Lucía"
let mensaje = saludo + ", " + usuario + "!"
print(mensaje)

// --------------------------------------------
// 6. Interpolación de constantes
// --------------------------------------------
let producto = "Manzana"
let precio = 0.45
print("El precio de una \(producto) es \(precio)€")

// --------------------------------------------
// 7. Ejercicio propuesto
// --------------------------------------------
// Crea una constante que contenga el nombre de una ciudad.
// Crea otra constante con su temperatura actual.
// Muestra por consola: "En [ciudad] estamos a [temperatura] grados."

let ciudad = "Cádiz"
let temperatura = 29.5
print("En \(ciudad) estamos a \(temperatura) grados.")
