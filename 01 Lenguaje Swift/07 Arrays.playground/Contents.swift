// Concepto: Arrays
// Uso: Un array (arreglo) es una colección ordenada de valores del mismo tipo. Sirve para guardar listas de datos, como números, nombres, etc.

// Ejemplo mínimo: Crear un array, listar, acceder, modificar, añadir y borrar valores

var numeros = [1, 2, 3, 4, 5]           // Creamos un array de enteros
print(numeros)                          // Listar todos los valores del array
print(numeros[0])                       // Acceder al primer elemento (índice 0)

numeros[1] = 10                         // Modificar valor del array (el segundo elemento ahora es 10)
print(numeros)                          // Ver el array modificado

numeros.append(6)                       // Añadir un valor al final
print(numeros)                          // Ver el array con el valor añadido

numeros.remove(at: 2)                   // Borrar el tercer elemento (índice 2)
print(numeros)                          // Ver el array tras borrar un elemento

// Ejemplo avanzado: Arrays de Strings, recorrer y operaciones varias

var frutas: [String] = ["Manzana", "Pera", "Naranja"]   // Crear un array de strings
print(frutas.isEmpty)                   // ¿El array está vacío? Devuelve TRUE o FALSE

frutas += ["Melón", "Plátano"]          // Añadir varios valores
print(frutas)

frutas.insert("Fresa", at: 1)           // Insertar valor en posición concreta
print(frutas)

frutas.removeLast()                     // Quitar el último elemento
print(frutas)

for fruta in frutas {                   // Recorrer todos los elementos
    print("Me gusta la \(fruta)")
}

// Ejemplo: Crear array vacío y cómo saber su longitud

var listaVacia = [Int]()                // Crear un array vacío de enteros
print(listaVacia.count)                 // Saber cuántos elementos hay (0)

listaVacia.append(42)                   // Añadir un valor
print(listaVacia)

// Ejemplo: Reemplazar varios valores de golpe

frutas[1...2] = ["Sandía", "Uva"]       // Reemplazar varios valores seguidos
print(frutas)

