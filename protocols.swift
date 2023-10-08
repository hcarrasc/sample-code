// Definición de un protocolo llamado PuedeHablar
protocol PuedeHablar {
    func hablar()
}

// Una clase Persona que implementa el protocolo PuedeHablar
class Persona: PuedeHablar {
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func hablar() {
        print("\(nombre) dice: ¡Hola!")
    }
}

// Una clase Perro que implementa el protocolo PuedeHablar
class Perro: PuedeHablar {
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
    
    func hablar() {
        print("\(nombre) dice: ¡Guau!")
    }
}

// Crear instancias y llamar al método hablar
let juan = Persona(nombre: "Juan")
let fido = Perro(nombre: "Fido")

juan.hablar() // Imprime: Juan dice: ¡Hola!
fido.hablar() // Imprime: Fido dice: ¡Guau!
