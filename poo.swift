class Persona {
    // Propiedades de la clase
    var nombre: String
    var edad: Int
    var direccion: String
    
    // Inicializador (Constructor)
    init(nombre: String, edad: Int, direccion: String) {
        self.nombre = nombre
        self.edad = edad
        self.direccion = direccion
    }
    
    // Método para imprimir información de la persona
    func imprimirInformacion() {
        print("Nombre: \(nombre), Edad: \(edad), Dirección: \(direccion)")
    }
    
    // Método para saludar
    func saludar() {
        print("¡Hola! Soy \(nombre).")
    }
}

// Uso de la clase Persona
let persona1 = Persona(nombre: "Juan", edad: 30, direccion: "Calle 123")
let persona2 = Persona(nombre: "María", edad: 25, direccion: "Avenida XYZ")

// Acceso a las propiedades y métodos
persona1.imprimirInformacion()
persona2.saludar()
