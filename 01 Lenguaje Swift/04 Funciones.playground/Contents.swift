// Concepto: Funciones
// Uso: Agrupan código reutilizable que puede recibir parámetros y devolver valores

// Ejemplo mínimo: función sin parámetros ni valor de retorno
func saludar() {
    print("¡Hola, mundo!") // Imprime un saludo en consola
}
saludar() // Llamada a la función

// Ejemplo avanzado 1: función con parámetros y retorno
func sumar(a: Int, b: Int) -> Int {
    return a + b // Devuelve la suma de a y b
}
let resultado = sumar(a: 3, b: 5) // resultado = 8

// Ejemplo avanzado 2: parámetros con nombres externos, valor por defecto y parámetros de longitud variable.
func crearMensaje(desde remitente: String, _ mensajes: String..., nivel: Int = 1) -> String {
    let cuerpo = mensajes.joined(separator: "\n") // Une todos los mensajes
    return "[Nivel \(nivel)] De: \(remitente)\n\(cuerpo)"
}
let mensaje = crearMensaje(desde: "Ana", "Hola", "¿Cómo estás?", nivel: 2)
print(mensaje)
