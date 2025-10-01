// Ejercicio 3 (Introducción a SWIFT)
// Sergio García González

var agenda: [String: String] = [:]

func agregarContacto(nombre: String, telefono: String) {
    if agenda[nombre] == nil {
        agenda[nombre] = telefono
        print("Contacto agregado: \(nombre) - \(telefono)")
    } else {
        print("El contacto '\(nombre)' ya existe en la agenda.")
    }
}

func buscarContacto(nombre: String) {
    if let telefono = agenda[nombre] {
        print("El teléfono de \(nombre) es \(telefono).")
    } else {
        print("El contacto '\(nombre)' no está en la agenda.")
    }
}

func listarContactos() {
    if agenda.isEmpty {
        print("La agenda está vacía.")
    } else {
        print("Lista de contactos:")
        for (nombre, telefono) in agenda {
            print("- \(nombre): \(telefono)")
        }
    }
}

func eliminarContacto(nombre: String) {
    if agenda.removeValue(forKey: nombre) != nil {
        print("Contacto '\(nombre)' eliminado correctamente.")
    } else {
        print("El contacto '\(nombre)' no existe en la agenda.")
    }
}

agregarContacto(nombre: "Ana", telefono: "123456789")
agregarContacto(nombre: "Luis", telefono: "987654321")
agregarContacto(nombre: "Ana", telefono: "111111111") // duplicado

buscarContacto(nombre: "Ana")
buscarContacto(nombre: "Carlos") // no existe

listarContactos()

eliminarContacto(nombre: "Luis")
eliminarContacto(nombre: "Pedro") // no existe

listarContactos()

