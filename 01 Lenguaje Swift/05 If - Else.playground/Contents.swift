```swift
// Concepto: If-Else
// Uso: para ejecutar diferentes bloques de código según si una condición booleana es verdadera o falsa

// Ejemplo mínimo que muestra la sintaxis básica:
if /* condición booleana */ true {
    // Aquí va el código si la condición es true
} else {
    // Aquí va el código si la condición es false
}

// Ejemplo avanzado:
let edad = 18            // edad de la persona
if edad >= 18 {
    print("Eres mayor de edad")  // se cumple la condición
} else {
    print("Eres menor de edad")  // no se cumple la condición
}

// Variante típica con else if para múltiples casos:
let temperatura = 25     // temperatura en grados Celsius
if temperatura <= 0 {
    print("Hace mucho frío")       // temperatura menor o igual a 0
} else if temperatura < 20 {
    print("Hace fresco")           // temperatura entre 1 y 19
} else {
    print("Hace calor")            // temperatura mayor o igual a 20
}

