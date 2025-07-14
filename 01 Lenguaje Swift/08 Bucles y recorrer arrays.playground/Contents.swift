// Concepto: Bucles con FOR
// Uso: Los bucles "for" se usan para repetir una acción varias veces. Muy útiles para recorrer listas de elementos (arrays).

// Ejemplo mínimo de bucle for simple
// En este caso, vamos a repetir la acción 5 veces, una vez por cada número del 1 al 5.
for numero in 1...5 { // El bucle empieza aquí. "numero" es una variable que irá tomando los valores 1, 2, 3, 4 y 5 uno a uno.
    print("El número es \(numero)") // Imprime el valor que tenga l avariable numero en ese momento.
}

// Explicación paso a paso:
// - "for" significa "para cada".
// - "numero" es el nombre de una variable temporal que solo existe dentro del bucle.
// - "in 1...5" significa que vamos a empezar en 1 y terminar en 5, avanzando de uno en uno.
// - Las llaves { } encierran el bloque de código que se repite en cada vuelta del bucle.
// - Dentro de las llaves, todo el código se ejecuta una vez por cada valor de "numero".
// - "\(numero)" dentro de las comillas es una forma de mostrar el valor actual de "numero" en el texto.
// Resultado final: El programa muestra por pantalla los números del 1 al 5, uno en cada línea.



// Ejemplo de bucle for recorriendo un array
let frutas = ["Manzana", "Banana", "Naranja"]

for fruta in frutas {
    print("Fruta: \(fruta)") // Imprime cada fruta del array
}


// UTILIZAMOS "FOR" CUANDO EL NÑUEMRO DE VUELTAS QUE LE QUEREMOS DAR EL BUCLE ES CONOCIDA, YA SEA EXPRESADO CON UN NÚMERO Ó DÁNDLO EL NOMBRE DE LA LISTA.





// Ejemplo más avanzado: sumar los elementos de un array de números
let numeros = [2, 4, 6, 8]
var suma = 0

for n in numeros {
    suma += n // Suma cada número a la variable suma
}
print("La suma total es \(suma)") // Resultado: 20

// Ejemplo usando índices con enumerated()

// A veces, cuando recorremos una lista (array), no solo queremos saber el valor (por ejemplo, el nombre de la fruta),
// sino también la posición que ocupa ese valor dentro del array. Esa posición se llama "índice" y en Swift, empieza en 0.

// Por ejemplo, en este array:
let frutas2 = ["Manzana", "Banana", "Naranja"]
// "Manzana" está en la posición 0
// "Banana" está en la posición 1
// "Naranja" está en la posición 2

// Si solo hacemos un bucle "for fruta in frutas", obtenemos los nombres, pero NO los índices.
// Para conseguir el valor Y la posición (índice), Swift nos da una función especial llamada .enumerated().

// ¿Qué hace .enumerated()?
// Convierte el array en una secuencia de pares (índice, valor).
// Así, por cada elemento, nos entrega dos cosas: el número de la posición (índice) y el valor (nombre de la fruta).

// Ejemplo real:
for (indice, fruta) in frutas2.enumerated() {
    // En cada vuelta del bucle:
    // "indice" vale el número de la posición actual (0, 1, 2...)
    // "fruta" vale el nombre del elemento en esa posición ("Manzana", "Banana", "Naranja")
    print("Índice \(indice): \(fruta)") // Esto imprime el índice y el valor juntos
}

// Salida esperada:
// Índice 0: Manzana
// Índice 1: Banana
// Índice 2: Naranja

// Resumiendo:
// - Usamos .enumerated() cuando necesitamos tanto el valor como su posición en el array.
// - Es muy útil si quieres mostrar elementos numerados, hacer operaciones según la posición, o modificar elementos en sitios concretos.





// Concepto: Bucles con WHILE
// Uso: El bucle "while" repite un bloque de código mientras una condición sea verdadera. Se utiliza cuando no sabemos cuántas veces debemos repetir la acción.

// Ejemplo mínimo de bucle while
var contador = 1 // Creamos una variable contador con valor inicial 1

while contador <= 5 { // Mientras contador sea menor o igual a 5
    print("Contador: \(contador)") // Imprime el valor actual de contador
    contador += 1 // Suma 1 al contador en cada vuelta
}

// Ejemplo: recorrer un array con while
let numeros2 = [10, 20, 30, 40]
var indice = 0 // Empezamos por el primer elemento (posición 0)

while indice < numeros2.count { // Mientras el índice sea menor que la cantidad de elementos del array
    print("Elemento en la posición \(indice): \(numeros2[indice])") // Imprime el valor en la posición actual
    indice += 1 // Pasa al siguiente elemento
}





// Ejemplo avanzado: buscar un valor en un array usando while

let cestaDeFrutas = ["Manzana", "Banana", "Naranja"] // Array con varias frutas
var buscado = "Banana" // Fruta que queremos encontrar
var i = 0 // Comenzamos por la primera posición
var encontrado = false // Variable para saber si encontramos la fruta

while i < cestaDeFrutas.count && !encontrado {
    
    // "i < cestaDeFrutas.count"  --> Pregunta: ¿quedan elementos por revisar en el array?
        // "encontrado" es una variable booleana (true o false) que indica si ya hallamos la fruta.
        // "!" delante de "encontrado" significa "NO encontrado" (es decir, que aún no hemos hallado la fruta).
        // "&&" significa "y además". La condición solo es verdadera si ambas partes se cumplen.
        // Así, el bucle sigue si todavía hay frutas por mirar Y además NO hemos encontrado la fruta buscada.

    
    
    if cestaDeFrutas[i] == buscado { // Si la fruta actual es la que buscamos
        print("Encontrada \(buscado) en la posición \(i)") // Mostramos un mensaje indicando la posición
        encontrado = true // Cambiamos encontrado a true para salir del bucle
    }
    i += 1 // Avanzamos al siguiente elemento
}







// Concepto: Bucles con REPEAT
// Uso: El bucle "repeat-while" repite un bloque de código al menos una vez y luego verifica una condición para seguir repitiendo. Se usa cuando queremos que el código se ejecute al menos una vez, sin importar la condición al principio.

// Ejemplo mínimo de repeat-while
var numero4 = 1 // Comenzamos con 1

repeat {
    print("El número es \(numero4)") // Imprime el valor actual de número
    numero4 += 1 // Suma 1 a la variable
} while numero4 <= 5 // Sigue repitiendo mientras la condición sea verdadera

// Ejemplo: recorrer un array con repeat-while
let listaDeNumeros = [10, 20, 30, 40]
var indice2 = 0 // Empezamos por el primer elemento

repeat {
    print("Elemento en la posición \(indice2): \(listaDeNumeros[indice2])") // Imprime el valor actual del array
    indice2 += 1 // Avanza al siguiente elemento
} while indice2 < listaDeNumeros.count // Repite mientras queden elementos en el array

// Ejemplo avanzado: buscar un valor en un array usando repeat-while
let cestaDeFrutas2 = ["Manzana", "Banana", "Naranja"]
let buscado2 = "Naranja"
var i2 = 0
var encontrado2 = false

repeat {
    if cestaDeFrutas2[i2] == buscado2 {
        print("Encontrada \(buscado2) en la posición \(i2)") // Indica si la encuentra
        encontrado2 = true // Cambia la variable para salir del bucle
    }
    i2 += 1 // Avanza al siguiente elemento
} while i2 < cestaDeFrutas2.count && !encontrado2 // Repite si no hemos llegado al final y no hemos encontrado la fruta
