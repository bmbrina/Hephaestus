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
El compilador debe de cumplir con los requerimientos del servicio que proporicona, indicando como responder ante ciertas situaciones. A continuación se muestran los requerimientos funcionales de este compilador:

- **Requerimientos Funcionales:**
  * RF01: El compilador debe leer el código del usuario desde un archivo `.heph`.
  * RF02: El compilador debe de permitir la declaración de variables de diferentes tipos (*Integer, Float, String y Bool*).
  * RF03: El compilador debe de permitir la declaración de variables dimensionadas (*1 y 2 dimensiones*) de diferentes tipos (*Integer, Float, String y Bool*).
  * RF04: El compilador debe permitir el uso de estatutos condicionales (*if-else*).
  * RF05: El compilador debe permitir el uso de estatutos de repetición (*while*).
  * RF06: El compilador debe permitir que el usuario ingrese información por medio del teclado.
  * RF07: El compilador debe permitir que el usuario imprima información.
  * RF08: El compilador debe permitir la declaración de funciones *Void* y de los diferentes tipos de datos (*Integer, Float, String y Bool*).
  * RF09: El compilador debe permitir la llamada de funciones.
  * RF10: El compilador debe permitir la asignación de variables, ya sea de los diferentes tipos de datos (*Integer, Float, String y Bool*) o de una llamada a función.
  * RF11: El compilador debe permitir la creación de clases.
  * RF12: El compilador debe permitir la declaración de variables dentro de las clases.
  * RF13: El compilador debe permitir la declaración de funciones, con o sin retorno, dentro de las clase.
  * RF14: El compilador debe de permitir la herencia entre clases.
  * RF15: El compilador debe contar con un `program` (*main*).
  * RF16: El compilador debe realizar operaciones aritméticas (*+,-,&ast;,/*) y lógicas (*>, <, <=, >=, <>, ==, and, or*).
  * RF17: Compilar el código del usuario y desplegar errores, en caso de que existan.
  * RF18: Ejecutar el código compilado en una máquina virtual y desplegar errores, en caso de que existan.
  * RF19: El compilador debe terminar cuando encuentre un error.


  - **Principales casos de uso:**


  || Descripción |
  | :-----------------  | :----------|
  | **Nombre**          | Compilar código con error y mostrar el error |
  | **ID**              | CU01 |
  | **Requerimientos**  | RF17, RF19 |
  | **Propósito**       | Terminar la compilación del programa en cuanto encuentre un error y mostrarlo al usuario|
  | **Precondiciones**  | El usuario tiene un archivo `.heph` con el código que desea compilar |
  | **Postcondiciones** | Se detiene la compilación y despliega un mensaje de error.|
  | **Flujo Normal**    | <ol><li>Ingresar el nombre del archivo</li><li>Compilar el programa</li><li>Se detecta un error y para la compilación</li><li>Muestra el error al usuario</li></ol> |
  | **Flujo Alterno**   | N/A|

  || Descripción |
  | :-----------------  | :----------|
  | **Nombre**          | Compilar código sin error |
  | **ID**              | CU02 |
  | **Requerimientos**  | RF01 .. RF016 |
  | **Propósito**       | Generar el codigo compilado|
  | **Precondiciones**  | No haber errores en el archivo `.heph`|
  | **Postcondiciones** | Se despliega un mensaje indicando que el archivo compilo exitosamente|
  | **Flujo Normal**    | <ol><li>Se Ingresa el nombre del archivo `.heph` del programa a compilar</li><li>Compilar el programa</li><li> Se genera el codigo compilado</li></ol> |
  | **Flujo Alterno**   | N/A |

  || Descripción |
  | :-----------------  | :----------|
  | **Nombre**          | Ejecutar código con error y mostrar el error |
  | **ID**              | CU03        |
  | **Requerimientos**  | RF18, RF19|
  | **Propósito**       | Detener la ejecución del programa cuando se encuentrar un error y mostrarlo al usuario|
  | **Precondiciones**  | La máquina virtual recibió los cuadruplos de la compilación.|
  | **Postcondiciones** | Se detiene la ejecución y despliega un mensaje de error. |
  | **Flujo Normal**    | <ol><li>Muestra mensaje de que comenzó la ejecución</li><li>Ejecuta el programa</li><li>Se detecta un error y para la ejecución</li><li>Muestra el error al usuario</li></ol> |
  | **Flujo Alterno**   | N/A |

  || Descripción |
  | :-----------------  | :----------|
  | **Nombre**          | Ejecutar código sin error |
  | **ID**              | CU04      |
  | **Requerimientos**  | RF01 .. RF016 |
  | **Propósito**       | Ejecutar el programa del usuario |
  | **Precondiciones**  | No haber errores de compilación |
  | **Postcondiciones** | Mostrar el resultado de la ejecución del programa |
  | **Flujo Normal**    | <ol><li>Muestra mensaje de que comenzó la ejecución</li><li>Ejecutar el programa</li><li> Mostrar el resultado del programa</li></ol> |
  | **Flujo Alterno**   | N/A |

#### 1.3 Descripción de los principales Test Cases

  Los principales casos de prueba fueron desarollados para comprobar la funcionalidad del compilador, fueron divididos para probar los casos específicos:

  - **Casos de prueba:**

  * *Fibonacci y Factorial iterativo*: Programas para probar los estatutos condicionales (*if-else*) y el estatuto ciclico (*while*).
  * *Fibonacci y Factorial recursivo*: Programas para probar el uso de *funciones recursivas*.

  * *Find y Sort*: Programas para probar las operaciones sobre vectores (*variable dimensionada*).

  * *Multiplcación de matrices*: Un programa paraprobar las operaciones sobre matrices (*variable dimensionada*).

  * *Universidad*: Un programa que muestra la funcionalidad orientada a objetos (*Clases, Herencia y Objetos*) que tiene `Hephaestus`.

#### 1.4 Descripción del proceso de desarrollo
