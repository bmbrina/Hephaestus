## Índice

1. Descripción del proyecto
  1. Propósito, Objetivos y Alcance del Proyecto
  2. Análisis de Requerimientos y Casos de Uso generales
  3. Descripción de los principales Test Cases
  4. Descripción del proceso de desarrollo
    * Reflexión de Bárbara Martínez
    * Reflexión Jorge Elizondo
2. Descripción del lenguaje
  1. Nombre del lenguaje
  2. Descripción de las principales características del lenguaje
  3. Descripción de los posibles errores
3. Descripción del compilador
  1. Equipo de cómputo, lenguaje y utilerías usadas en el proyecto
  2. Descripción del Análisis de Léxico
    * Patrones de construcción de los elementos principales
    * Tokens del lenguaje y código asociado
  3. Descripción del Análisis de Sintaxis
    * Gramática Formal
  4. Descripción de Generación de Código Intermedio y Análisis Semántico
    * Código de operación y direcciones virtuales asociadas
    * Diagramas de Sintaxis con las acciones correspondientes
    * Descripción de las acciones semánticas y de código
    * Tabla de consideraciones semánticas
  5. Descripción del proceso Administración de Memoria
    * Especificación gráfica de las estructuras
4. Descripción de la máquina virtual
  1. Equipo de cómputo, lenguaje y utilerías usadas en el proyecto
  2. Descripción del proceso Administración de Memoria
    * Especificación gráfica de las estructuras
    * Asociación hecha entre las direcciones virtuales y las reales
5. Pruebas del funcionamiento del lenguaje
  1. Pruebas que comprueben el funcionamiento del proyecto
6. Listados documentados del proyecto

### 1. Descripción del proyecto
#### 1.1 Propósito, Objetivos y Alcance del Proyecto
**Visión:**
La visión de `Hephaestus` es crear un lenguaje básico orientado a objetos que le permita al usuario entender las funciones básicas de este tipo de lenguajes de programación.

**Objetivo:**
`Hephaestus` fue desarrollado con el objetivo de crear un lenguaje de programación con la funcionalidad básica de un lenguaje orientado a objetos. Creemos que el distintivo de este lenguaje es que la sintaxis es basada en palabras genéricas como las típicamente utilizadas en pseudocódigo por lo que le será fácil al usuario comprender los conceptos que el lenguaje maneja.

**Alcance del Proyecto:**
Crear un compilador para un lenguaje de programación orientado a objetos que cuente con las funcionalidades básicas, es decir: variables dimensionadas (arreglos y matrices), funciones, clases, herencia, estatutos básicos (condicionales y ciclicos), operaciones matemáticas y lógicas.

#### 1.2 Análisis de Requerimientos y Casos de Uso generales
El compilador debe de cumplir con ciertos requerimientos concernientes al servicio que proporicona, indicando como responder ante ciertas situaciones. A continuación se muestran los requerimientos funcionales de este compilador:

- **Requerimientos Funcionales**:
  * RF01: El compilador debe marcar errores durante la compilación.
  * RF02: El compilador debe terminar tan pronto encuentre un error.
  * RF03: El compilador debe leer el código del usuario desde un archivo de texto.
  * RF04: El compilador debe de permitir la declaración de variables de diferentes tipos (*Integer, Float, String y Bool*).
  * RF05: El compilador debe de permitir la declaración de variables dimensionadas (*1 y 2 dimensiones*) de diferentes tipos (*Integer, Float, String y Bool*).
  * RF06: El compilador debe permitir el uso de estatutos condicionales (*if-else*).
  * RF07: El compilador debe permitir el uso de estatutos de repetición (*while*).
  * RF08: El compilador debe permitir que el usuario ingrese información por medio de escritura en el teclado.
  * RF09: El compilador debe permitir que el usuario imprima información.
  * RF10: El compilador debe permitir la declaración de funciones *Void* y de los diferentes tipos de datos (*Integer, Float, String y Bool*).
  * RF11: El compilador debe permitir la llamada de funciones.
  * RF12: El compilador debe permitir la asignación de variables, ya sea de los diferentes tipos de datos (*Integer, Float, String y Bool*) o de una llamada a función.
  * RF13: El compilador debe permitir la creación de clases.
  * RF14: El compilador debe permitir la declaración de variables dentro de las clases.
  * RF15: El compilador debe permitir la declaración de funciones, con o sin retorno, dentro de las clase.
  * RF16: El compilador debe de permitir la herencia entre clases.
  * RF17: El compilador debe contar con un program (*main*).
  * RF18: El compilador debe realizar operacione aritméticas (*+,-,&ast;,/*) y lógicas (*>, <, <=, >=, <>, ==, and, or*).
