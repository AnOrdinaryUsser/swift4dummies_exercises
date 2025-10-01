// Ejercicio 1 (Introducción a SWIFT)
// Sergio García González

func repetir(mensaje: String, veces: Int = 1) {
    for _ in 1...veces {
        print(mensaje)
    }
}

let nombre: String = "Ana"
let edad: Int = 20
let veces: Int = 3

let mensaje = edad >= 18 ? "Hola \(nombre), eres mayor de edad" : "Hola \(nombre), eres menor de edad"

repetir(mensaje: mensaje, veces: veces)
