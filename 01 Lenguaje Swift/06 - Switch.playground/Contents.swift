// Concepto: Switch con Default

// Uso: Permite ejecutar diferentes bloques de código según el valor de una variable.
// El switch se ejecuta en el mismo momento en el que aparece en el flujo del programa.

// Ejemplo mínimo:
let dia = "martes" // Declaramos la variable
// Aquí directamente se evalúa 'dia' y se imprime el resultado según el caso
switch dia {
case "lunes":
    print("Es lunes")
case "martes":
    print("Es martes")
default:
    print("No es ni lunes ni martes")
}

// Ejemplo avanzado:
let nota = 7 // Declaramos la variable
switch nota {
case 10:
    print("¡Sobresaliente!")
case 8, 9:
    print("Notable")
case 6, 7:
    print("Bien")
case 5:
    print("Suficiente")
default:
    print("Insuficiente")
}

// Otro ejemplo con rangos:
let edad = 16 // Declaramos la variable
switch edad {
case 0...12:
    print("Eres un niño")
case 13...17:
    print("Eres un adolescente")
case 18...64:
    print("Eres un adulto")
default:
    print("Eres una persona mayor")
}
