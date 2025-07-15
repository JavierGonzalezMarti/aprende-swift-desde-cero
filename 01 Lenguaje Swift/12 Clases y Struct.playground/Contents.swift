// Concepto: CLASES
// Uso: Crear un tipo de dato que representa un objeto real o abstracto, con propiedades y métodos.

// Definimos la clase base Persona
class Persona {
    var nombre: String = ""      // Nombre inicializado a cadena vacía
    var edad: Int = 0            // Edad inicializada a 0
    
    func saludar() {
        print("¡Hola! Me llamo \(nombre) y tengo \(edad) años.")
    }
}

// Definimos la subclase Empleado que hereda de Persona
class Empleado: Persona {
    var puesto: String           // Propiedad extra sin valor por defecto
    
    init(nombre: String, edad: Int, puesto: String) {
        self.puesto = puesto    // 1) Inicializa propiedad propia
        super.init()            // 2) Inicializa Persona
        self.nombre = nombre    // 3) Asigna nombre heredado
        self.edad = edad        // 4) Asigna edad heredada
    }
    
    func descripcion() -> String {
        return "Soy \(nombre), tengo \(edad) años y trabajo como \(puesto)."
    }
    
    deinit {
        print("Empleado \(nombre) ha sido eliminado de memoria.")
    }
}


// Concepto: STRUCT
// Uso: Crear un tipo de valor ligero que copia sus valores en lugar de usar referencias.

struct Punto {
    var x: Double              // Coordenada X
    var y: Double              // Coordenada Y
    
    func mostrar() {
        print("Punto en (\(x), \(y))")
    }
}

struct Rectangulo {
    var origen: Punto          // Esquina inferior izquierda
    var tamaño: Punto          // Ancho (x) y alto (y)
    
    func area() -> Double {
        return tamaño.x * tamaño.y
    }
}

struct Contador {
    var cuenta: Int = 0        // Valor inicial del contador
    
    mutating func incrementar() {
        cuenta += 1            // Cambia la propiedad interna
        print("Contador ahora vale \(cuenta)")
    }
}


// Concepto: VENTAJAS DE STRUCT (TIPO DE VALOR)
// Uso: Modelar datos simples con copia segura, sin referencias compartidas.

var punto1 = Punto(x: 10.0, y: 20.0)   // Creamos un Punto
var punto2 = punto1                    // Se copia el valor, no la referencia
punto2.x = 99.0                        // Modificamos la copia
print("punto1.x = \(punto1.x)")        // Imprime 10.0 ← no cambia
print("punto2.x = \(punto2.x)")        // Imprime 99.0 ← copia modificada

// ------------------------------------------------------------

// Concepto: VENTAJAS DE CLASS (TIPO DE REFERENCIA)
// Uso: Modelar objetos que se comparten y modifican desde múltiples variables

class PuntoRef {
    var x: Double
    var y: Double
    
    init(x: Double, y: Double) {
        self.x = x           // Inicializa X
        self.y = y           // Inicializa Y
    }
}

var pRef1 = PuntoRef(x: 10.0, y: 20.0)  // Creamos una instancia de clase
var pRef2 = pRef1                       // Ambas variables referencian el mismo objeto
pRef2.x = 99.0                          // Modificamos a través de pRef2
print("pRef1.x = \(pRef1.x)")          // Imprime 99.0 ← cambia también en pRef1
print("pRef2.x = \(pRef2.x)")          // Imprime 99.0

// ------------------------------------------------------------

// Comparación con alternativas primitivas:
// - Tuple: sin nombre de métodos ni validaciones.
// - Dictionary: sin tipos fuertes, riesgo de nil o errores de clave.

var puntoTuple = (x: 1.0, y: 2.0)
var copiaTuple = puntoTuple
copiaTuple.x = 5.0
print("tuple original x = \(puntoTuple.x), copia x = \(copiaTuple.x)")

var puntoDict: [String: Double] = ["x": 1.0, "y": 2.0]
var copiaDict = puntoDict
copiaDict["x"] = 5.0
print("dict original x = \(puntoDict["x"]!), copia x = \(copiaDict["x"]!)")


// ------------------------------------------------------------

// Conclusión en código:
// - struct: semántica de valor (copia), tipo seguro, ideal para datos pequeños e independientes.
// - class: semántica de referencia, objetos compartidos, ideal para modelos con identidad única.
// - tuple/dictionary: solo para casos muy simples o temporales, carecen de la robustez de struct/class.
