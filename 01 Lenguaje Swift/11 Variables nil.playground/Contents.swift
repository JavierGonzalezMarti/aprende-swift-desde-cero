// Concepto: Opcionales (Optional), nil, nullabilidad, unwrap y guard en Swift

// Uso: Los opcionales permiten que una variable pueda no tener valor (nil). Se usan para trabajar con datos que pueden faltar o no estar inicializados (por ejemplo si los solicito a internet). "Unwrap" es el proceso de obtener el valor de un opcional. "guard" permite validar valores y salir temprano de una función si algo es nil.

// Ejemplo mínimo: variable opcional y nil
var nombre: String? // Puede tener texto o ser nil
nombre = "Javier"
nombre = nil // Ahora no tiene ningún valor

// Acceso seguro: comprobando si tiene valor (unwrap con if let)
if let nombreSeguro = nombre {
    print("Hola, \(nombreSeguro)") // Solo entra si nombre NO es nil
} else {
    print("No hay nombre")
}

// Variante avanzada: Forzando el unwrap (no recomendado si puede ser nil)
nombre = "Lucía"
print(nombre!) // El signo ! obliga a sacar el valor. Da error si es nil.

// guard let: Salida anticipada si el opcional es nil
func saludar(persona: String?) {
    guard let nombreReal = persona else {
        print("No puedo saludar, no hay nombre")
        return
    }
    print("¡Hola, \(nombreReal)!")
}

saludar(persona: "Sofía")
saludar(persona: nil)

// Ejemplo: Opcionales en práctica real
var edad: Int? // Puede que haya edad o no
edad = 30
if let años = edad {
    print("Edad: \(años)")
} else {
    print("Edad desconocida")
}

// Creamos una variable opcional llamada apodo, que puede ser texto o estar vacía (nil)
var apodo: String? = nil // Puede tener un texto o estar vacía

// Queremos mostrar el apodo, pero si no tiene valor (es nil), mostraremos "Sin apodo".
let mostrarApodo = apodo ?? "Sin apodo" // Si apodo está vacía, usa "Sin apodo" como valor

print(mostrarApodo) // Resultado: "Sin apodo"

