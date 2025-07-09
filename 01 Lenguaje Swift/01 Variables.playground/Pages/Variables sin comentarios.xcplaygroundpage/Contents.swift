import UIKit

// --------------------------------------------
// 1. Declaración y reasignación de variables
// --------------------------------------------
var nombre = "Javi"
print(nombre)
nombre = "María"
print(nombre)


// --------------------------------------------
// 2. Tipos básicos: String, Int, Double, Bool
// --------------------------------------------
var edad = 25
var altura = 1.75
var esEstudiante = true
print("Edad: \(edad), Altura: \(altura)m, ¿Es estudiante? \(esEstudiante)")


// --------------------------------------------
// 3. Operaciones matemáticas básicas
// --------------------------------------------
var numero1 = 10
var numero2 = 3
var suma = numero1 + numero2
var resta = numero1 - numero2
var producto = numero1 * numero2
var division = numero1 / numero2
print("Suma: \(suma), Resta: \(resta), Multiplicación: \(producto), División: \(division)")


// --------------------------------------------
// 4. Concatenación de cadenas
// --------------------------------------------
var saludo = "Hola"
var nombreUsuario = "Ana"
var mensaje = "¡" + saludo + ", " + nombreUsuario + "!"
print(mensaje)


// --------------------------------------------
// 5. Interpolación de cadenas
// --------------------------------------------
let ciudad = "Madrid"
let temperatura = 32
print("Hoy en \(ciudad) hace \(temperatura) grados.")


// --------------------------------------------
// 6. Cambios de valor paso a paso
// --------------------------------------------
var puntos = 0
puntos += 10
puntos -= 3
puntos *= 2
puntos /= 2
print("Puntos finales: \(puntos)")


// --------------------------------------------
// 7.A. Ejercicio: Suma de dos números
// --------------------------------------------
var a = 8
var b = 12
var resultado = a + b
print("El resultado es: \(resultado)")


// --------------------------------------------
// 7.B. Ejercicio: Convertir grados Celsius a Fahrenheit
// --------------------------------------------
let celsius = 20.0
let fahrenheit = (celsius * 9/5) + 32
print("\(celsius)°C son \(fahrenheit)°F")


// --------------------------------------------
// 7.C. Ejercicio: Calcular el área de un rectángulo
// --------------------------------------------
let base = 5.0
let alturaRectangulo = 3.0
let area = base * alturaRectangulo
print("El área del rectángulo es \(area)")


// --------------------------------------------
// 7.D. Ejercicio: Aumentar y disminuir vidas en un juego
// --------------------------------------------
var vidas = 3
vidas -= 1
print("Te quedan \(vidas) vidas")
vidas += 2
print("¡Ganaste vidas! Ahora tienes \(vidas)")
