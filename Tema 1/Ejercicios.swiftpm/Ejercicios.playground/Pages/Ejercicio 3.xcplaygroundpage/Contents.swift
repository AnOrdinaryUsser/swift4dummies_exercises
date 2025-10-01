// Ejercicio 3 (Introducción a SWIFT)
// Sergio García González

import Foundation

struct Estudiante {
    var nombre: String
    var calificaciones: [Double]
    
    // Función para calcular el promedio
    func promedio() -> Double? {
        if calificaciones.isEmpty {
            return nil
        } else {
            let suma = calificaciones.reduce(0, +)
            return suma / Double(calificaciones.count)
        }
    }
}

var estudiantes: [String: Estudiante] = [:]

func agregarEstudiante(nombre: String) {
    if estudiantes[nombre] == nil {
        estudiantes[nombre] = Estudiante(nombre: nombre, calificaciones: [])
        print("Estudiante \(nombre) agregado")
    } else {
        print("El estudiante \(nombre) ya existe")
    }
}

func agregarCalificacion(nombre: String, calificacion: Double) {
    if var estudiante = estudiantes[nombre] {
        estudiante.calificaciones.append(calificacion)
        estudiantes[nombre] = estudiante
        print("Calificación \(calificacion) agregada a \(nombre)")
    } else {
        print("Estudiante \(nombre) no encontrado")
    }
}

func mostrarPromedio(nombre: String) {
    if let estudiante = estudiantes[nombre],
       let promedio = estudiante.promedio() {
        print("El promedio de \(nombre) es \(String(format: "%.2f", promedio))")
    } else {
        print("No hay calificaciones o el estudiante \(nombre) no existe")
    }
}

// Pruebas

agregarEstudiante(nombre: "Ana")
agregarEstudiante(nombre: "Luis")

agregarCalificacion(nombre: "Ana", calificacion: 8.5)
agregarCalificacion(nombre: "Ana", calificacion: 9.0)
agregarCalificacion(nombre: "Luis", calificacion: 6.0)

mostrarPromedio(nombre: "Ana")   // → 8.75
mostrarPromedio(nombre: "Luis")  // → 6.0
mostrarPromedio(nombre: "Pedro") // → no existe
