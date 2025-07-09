import Foundation
// Importa el módulo Foundation que ofrece utilidades básicas del sistema.

let edad: Int = 28
// Declara una constante llamada ‘edad’ de tipo Int y la inicializa con 28.

let edadDouble: Double = Double(edad)
// Usa el inicializador Double(_:), pasando ‘edad’, para convertir el Int a Double.

print("Edad como Double:", edadDouble)
// Llama a la función print(_:), mostrando un String y el valor Double.

let precio: Double = 19.95
// Declara una constante ‘precio’ de tipo Double y la inicializa en 19.95.

let precioEntero: Int = Int(precio)
// Usa el inicializador Int(_:), pasando ‘precio’, para convertir el Double a Int (trunca decimales).

print("Precio entero:", precioEntero)
// Imprime en consola el String y el valor Int resultante.

let unidades: Int = 5
// Declara una constante ‘unidades’ de tipo Int con valor 5.

let textoUnidades: String = String(unidades)
// Usa el inicializador String(_:), pasando ‘unidades’, para convertir el Int a String.

print("Unidades:", textoUnidades)
// Imprime en consola el texto y la representación String del número.

let porcentaje: Double = 0.85
// Declara una constante ‘porcentaje’ de tipo Double con valor 0.85.

let textoPorcentaje: String = String(porcentaje)
// Convierte el Double a String con su inicializador correspondiente.

print("Porcentaje:", textoPorcentaje)
// Muestra en consola el String y el porcentaje en formato texto.

let textoNumero: String = "123"
// Declara una constante ‘textoNumero’ de tipo String con contenido numérico.


let alturaFloat: Float = 1.75
// Declara una constante ‘alturaFloat’ de tipo Float con valor 1.75.

let alturaComoDouble: Double = Double(alturaFloat)
// Convierte el Float a Double usando su inicializador.

print("Altura Double:", alturaComoDouble)
// Imprime en consola la altura convertida a Double.

let pesoDouble: Double = 72.3
// Declara una constante ‘pesoDouble’ de tipo Double con valor 72.3.

let pesoComoFloat: Float = Float(pesoDouble)
// Usa el inicializador Float(_:), pasando el Double, para convertir.

print("Peso Float:", pesoComoFloat)
// Muestra en consola el peso convertido a Float (puede perder precisión).
