import UIKit
// Esto importa la librería UIKit que permite crear interfaces de usuario en aplicaciones iOS.

// --------------------------------------------
// 1. Declaración y reasignación de variables
// --------------------------------------------
var nombre = "Javi"
// Crea una variable llamada nombre y le asigna el texto "Javi" como valor inicial.
print(nombre)
// Muestra en la consola el contenido de la variable nombre.
nombre = "María"
// Cambia el valor de la variable nombre y pone ahora el texto "María".
print(nombre)
// Muestra en la consola el nuevo valor de la variable nombre.

// --------------------------------------------
// 2. Tipos básicos: String, Int, Double, Bool
// --------------------------------------------
var edad = 25
// Crea una variable llamada edad y le asigna el número 25.
var altura = 1.75
// Crea una variable llamada altura y le asigna el número 1.75 que representa metros.
var esEstudiante = true
// Crea una variable llamada esEstudiante y le asigna el valor verdadero (true).
print("Edad: \(edad), Altura: \(altura)m, ¿Es estudiante? \(esEstudiante)")
// Muestra en la consola un texto que incluye los valores de edad, altura y esEstudiante.

// --------------------------------------------
// 3. Operaciones matemáticas básicas
// --------------------------------------------
var numero1 = 10
// Crea una variable llamada numero1 y le asigna el número 10.
var numero2 = 3
// Crea una variable llamada numero2 y le asigna el número 3.
var suma = numero1 + numero2
// Crea una variable llamada suma y guarda el resultado de sumar numero1 más numero2.
var resta = numero1 - numero2
// Crea una variable llamada resta y guarda el resultado de restar numero2 a numero1.
var producto = numero1 * numero2
// Crea una variable llamada producto y guarda el resultado de multiplicar numero1 por numero2.
var division = numero1 / numero2
// Crea una variable llamada division y guarda el resultado de dividir numero1 entre numero2.
print("Suma: \(suma), Resta: \(resta), Multiplicación: \(producto), División: \(division)")
// Muestra en la consola los resultados de las operaciones de suma, resta, multiplicación y división.

// --------------------------------------------
// 4. Concatenación de cadenas
// --------------------------------------------
var saludo = "Hola"
// Crea una variable llamada saludo y le asigna el texto "Hola".
var nombreUsuario = "Ana"
// Crea una variable llamada nombreUsuario y le asigna el texto "Ana".
var mensaje = "¡" + saludo + ", " + nombreUsuario + "!"
// Crea una variable llamada mensaje y construye un texto juntando saludo, nombreUsuario y signos de exclamación.
print(mensaje)
// Muestra en la consola el texto completo guardado en mensaje.

// --------------------------------------------
// 5. Interpolación de cadenas
// --------------------------------------------
let ciudad = "Madrid"
// Crea una constante llamada ciudad con el texto "Madrid".
let temperatura = 32
// Crea una constante llamada temperatura con el número 32.
print("Hoy en \(ciudad) hace \(temperatura) grados.")
// Muestra en la consola un texto que dice la temperatura en la ciudad usando interpolación.

// --------------------------------------------
// 6. Cambios de valor paso a paso
// --------------------------------------------
var puntos = 0
// Crea una variable llamada puntos y la inicia en cero.
puntos += 10
// Suma 10 al valor actual de puntos y guarda el resultado en la misma variable.
puntos -= 3
// Resta 3 al valor actual de puntos y guarda el resultado en la misma variable.
puntos *= 2
// Multiplica el valor actual de puntos por 2 y guarda el resultado en la misma variable.
puntos /= 2
// Divide el valor actual de puntos entre 2 y guarda el resultado en la misma variable.
print("Puntos finales: \(puntos)")
// Muestra en la consola el valor final de la variable puntos.

// --------------------------------------------
// 7.A. Ejercicio: Suma de dos números
// --------------------------------------------
var a = 8
// Crea una variable llamada a y le asigna el número 8.
var b = 12
// Crea una variable llamada b y le asigna el número 12.
var resultado = a + b
// Crea una variable llamada resultado y guarda la suma de a más b.
print("El resultado es: \(resultado)")
// Muestra en la consola el texto con el valor de resultado.

// --------------------------------------------
// 7.B. Ejercicio: Convertir grados Celsius a Fahrenheit
// --------------------------------------------
let celsius = 20.0
// Crea una constante llamada celsius con el valor decimal 20.0.
let fahrenheit = (celsius * 9/5) + 32
// Crea una constante llamada fahrenheit y convierte celsius a grados Fahrenheit con la fórmula.
print("\(celsius)°C son \(fahrenheit)°F")
// Muestra en la consola el texto que muestra la conversión de Celsius a Fahrenheit.

// --------------------------------------------
// 7.C. Ejercicio: Calcular el área de un rectángulo
// --------------------------------------------
let base = 5.0
// Crea una constante llamada base con el valor decimal 5.0.
let alturaRectangulo = 3.0
// Crea una constante llamada alturaRectangulo con el valor decimal 3.0.
let area = base * alturaRectangulo
// Crea una constante llamada area y calcula el área del rectángulo multiplicando base por alturaRectangulo.
print("El área del rectángulo es \(area)")
// Muestra en la consola el texto con el valor calculado para el área.

// --------------------------------------------
// 7.D. Ejercicio: Aumentar y disminuir vidas en un juego
// --------------------------------------------
var vidas = 3
// Crea una variable llamada vidas y la inicia con el número 3.
vidas -= 1
// Resta 1 al valor actual de vidas y guarda el resultado en la misma variable.
print("Te quedan \(vidas) vidas")
// Muestra en la consola un texto con el número de vidas restantes.
vidas += 2
// Suma 2 al valor actual de vidas y guarda el resultado en la misma variable.
print("¡Ganaste vidas! Ahora tienes \(vidas)")
// Muestra en la consola un texto que informa las vidas actuales después de ganar más.

