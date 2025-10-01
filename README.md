# Swift4Dummies Exercises

Este repositorio contiene ejercicios prácticos de Swift para principiantes, resueltos y documentados. Su objetivo es ayudarte a familiarizarte con conceptos fundamentales como variables, funciones, diccionarios, structs, loops, opcionales y desarrollo básico de aplicaciones iOS.

---

## 📂 Estructura del Repositorio

- **Tema 1: Introducción a Swift**
  - Ejercicio 1: Saludo personalizado
  - Ejercicio 2: Agenda de contactos
  - Ejercicio 3: Gestión de estudiantes

- **Tema 2: Introducción a XCODE**
  - Single View App
  - Tabbed View App
  - Calculadora básica

---

## Tema 1: Fundamentos de Swift

### Ejercicio 1: Saludo Personalizado
**Objetivo:** Practicar la entrada de datos, interpolación de cadenas, condicionales y funciones con parámetros por defecto.  

**Descripción:**
- Preguntar al usuario su nombre y edad.
- Generar un saludo personalizado:
  - Si la edad ≥ 18 → "Hola <nombre>, eres mayor de edad"
  - Si la edad < 18 → "Hola <nombre>, eres menor de edad"
- Permitir repetir el saludo N veces usando una función con valor por defecto.
- Manejar entradas inválidas y opcionales, usando un valor por defecto si el usuario no proporciona un nombre o un número de repeticiones válido.

**Conceptos clave:**
- `var` y `let`
- Funciones con parámetros opcionales y valores por defecto
- Interpolación de strings
- `for loop` con `_` si no se necesita el contador
- Manejo seguro de entradas de usuario

---

### Ejercicio 2: Agenda de Contactos
**Objetivo:** Practicar diccionarios, funciones y opcionales.  

**Descripción:**
- Crear un diccionario `[String: String]` para almacenar contactos.
- Funciones implementadas:
  - Añadir un contacto (evitando duplicados)
  - Buscar un contacto por nombre
  - Listar todos los contactos
  - Eliminar un contacto
- Manejo de opcionales para contactos inexistentes.
- Simulación de un “menú” llamando a las funciones en distintos escenarios:
  - Agregar contactos
  - Intentar agregar un duplicado
  - Buscar contactos existentes y no existentes
  - Listar contactos
  - Eliminar un contacto

---

### Ejercicio 3: Gestión de Estudiantes
**Objetivo:** Trabajar con `struct`, diccionarios y cálculos.  

**Descripción:**
- Definir un `struct Estudiante` con `nombre` y lista de `calificaciones`.
- Crear un diccionario donde la clave es el nombre del estudiante y el valor es el objeto `Estudiante`.
- Funciones implementadas:
  - Agregar un estudiante
  - Añadir calificaciones a un estudiante existente
  - Calcular y mostrar el promedio de calificaciones
- Simulación de escenarios creando estudiantes, agregando calificaciones y mostrando promedios.
- Manejo de estudiantes inexistentes y calificaciones de tipo `Double`.

---

## Tema 2: Introducción a XCODE

### Single View App
**Objetivo:** Crear una app básica de una sola vista con interfaz simple.

### Tabbed View App
**Objetivo:** Crear una app con varias pestañas usando `UITabBarController` para practicar navegación.

### Calculadora Básica
**Objetivo:** Implementar una calculadora simple con operaciones básicas.  

**Descripción de la interfaz:**
- `UILabel` para mostrar números y resultados
  - Posición: top de la pantalla
  - Constraints: Top = 50, Leading = 16, Trailing = -16, Height = 80
  - Fuente grande y centrada
- `Stack Views` para botones
  - 4 filas horizontales de botones: `7,8,9,÷`, `4,5,6,×`, `1,2,3,-`, `0,C,=,+`
  - Stack Views: Axis = Horizontal, Distribution = Fill Equally, Spacing = 8
  - Stack View principal: Axis = Vertical, Distribution = Fill Equally, Spacing = 8
  - Constraints: Leading = 16, Trailing = -16, Bottom = 50, Height = 300

**Conceptos clave:**
- IBOutlet y IBAction
- Manejo de estados de la calculadora
- Operaciones básicas: suma, resta, multiplicación y división

---

## Contribuciones

Este repositorio es para uso educativo y personal. Puedes clonar y estudiar los ejercicios para aprender Swift de manera práctica.

---

