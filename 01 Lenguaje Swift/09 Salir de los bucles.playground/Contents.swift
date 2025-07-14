// Concepto: "break" y "continue"
// Uso: Sirven para controlar el flujo en bucles (for, while, repeat-while).
// "break" termina el bucle completamente.
// "continue" salta al siguiente ciclo del bucle, ignorando el resto del bloque actual.

// Ejemplo mínimo de "break"
for numero in 1...5 {
    if numero == 3 {
        break // Sale del bucle cuando numero es 3
    }
    print("Número: \(numero)")
}
// Resultado: Imprime 1 y 2

// Ejemplo mínimo de "continue"
for numero in 1...5 {
    if numero == 3 {
        continue // Salta el número 3, no ejecuta el print
    }
    print("Número: \(numero)")
}
// Resultado: Imprime 1, 2, 4, 5

// Ejemplo avanzado: Usando "break" y "continue" juntos
let lista = [2, 4, 6, 7, 8, 10]
for valor in lista {
    if valor % 2 != 0 {
        print("¡He encontrado un impar! Salgo del bucle.")
        break // Termina el bucle si encuentra un número impar
    }
    if valor == 4 {
        continue // Salta el número 4 y no lo imprime
    }
    print("Valor par: \(valor)")
}
// Resultado: Imprime 2, salta el 4, imprime 6, luego encuentra el 7 (impar) y termina el bucle

// Ejemplo típico con "continue" en un array
let palabras = ["hola", "swift", "", "programar"]
for palabra in palabras {
    if palabra.isEmpty {
        continue // Salta las palabras vacías
    }
    print("Palabra: \(palabra)")
}
// Resultado: Imprime "hola", "swift", "programar"

