gramáticamétodos## Índice

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
Crear un compilador para un lenguaje de programación orientado a objetos que cuente con las funcionalidades básicas, es decir: variables dimensionadas (arreglos y matrices), funciones, clases, herencia, estatutos básicos (condicionales y cíclicos), operaciones matemáticas y lógicas.

#### 1.2 Análisis de Requerimientos y Casos de Uso generales
El compilador debe de cumplir con los requerimientos del servicio que proporciona, indicando como responder ante ciertas situaciones. A continuación se muestran los requerimientos funcionales de este compilador:

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
  | **Propósito**       | Generar el código compilado|
  | **Precondiciones**  | No haber errores en el archivo `.heph`|
  | **Postcondiciones** | Se despliega un mensaje indicando que el archivo compilo exitosamente|
  | **Flujo Normal**    | <ol><li>Se Ingresa el nombre del archivo `.heph` del programa a compilar</li><li>Compilar el programa</li><li> Se genera el codigo compilado</li></ol> |
  | **Flujo Alterno**   | N/A |

  || Descripción |
  | :-----------------  | :----------|
  | **Nombre**          | Ejecutar código con error y mostrar el error |
  | **ID**              | CU03        |
  | **Requerimientos**  | RF18, RF19|
  | **Propósito**       | Detener la ejecución del programa cuando se encuentra un error y mostrarlo al usuario|
  | **Precondiciones**  | La máquina virtual recibió los cuádruplos de la compilación.|
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

  Los principales casos de prueba fueron desarrollados para comprobar la funcionalidad del compilador, fueron divididos para probar los casos específicos:

  - **Casos de prueba:**

  * *Fibonacci y Factorial iterativo*: Programas para probar los estatutos condicionales (*if-else*) y el estatuto cíclico (*while*).
    - Ejemplo de Factorial iterativo:

    ```
      program factorial:

        define n as Integer = 10 .
        define factorial as Integer = 1 .
        define i as Integer = 1 .

        while(i <= n):
         factorial = factorial * i.
         i = i + 1 .
        end while

        print(factorial).

      end program
    ```
    ```
      Starting compilation...
      Compilation finished successfully.
      Starting execution...
      3628800
      Program finished successfully.
    ```
  * *Fibonacci y Factorial recursivo*: Programas para probar el uso de *funciones recursivas*.
    - Ejemplo de Fibonacci recursivo:
    ```
      function Integer fibonacci(Integer a):
        if(a <= 2):
          a = 1 .
        else:
          a = fibonacci(a - 2) + fibonacci(a - 1).
        end if
       return a.
      end function

      program recursiveFibonacci:
        define res as Integer.
        res = fibonacci(20).
        print(res).
      end program
    ```
    ```
    Starting compilation...
    Compilation finished successfully.
    Starting execution...
    6765
    Program finished successfully.
    ```
  * *Find y Sort*: Programas para probar las operaciones sobre vectores (*variable dimensionadas*).
    - Ejemplo de Sort:
    ```
      program bubbleSort:
        define arr as Integer[5].
        define n as Integer = 5 .

        arr[0] = 5 .
        arr[1] = 1 .
        arr[2] = 4 .
        arr[3] = 2 .
        arr[4] = 8 .

        define i as Integer = 0 .
        define aux as Integer.
        define j as Integer = 0 .

        while(i < n - 1):
          j = 0 .
          while(j < n - i - 1):
            if (arr[j] > arr[j+1]):
              aux = arr[j].
              arr[j] = arr[j+1].
              arr[j+1] = aux.
            end if
            j = j + 1 .
          end while
          i = i + 1 .
        end while

        i = 0 .

        print("Sorted array:").
        while(i < n):
          print(arr[i]).
          i = i + 1 .
        end while
      end program
    ```
    ```
    Starting compilation...
    Compilation finished successfully.
    Starting execution...
    "Sorted array:"
    1
    2
    4
    5
    8
    Program finished successfully.
    ```
  * *Multiplcación de matrices*: Un programa paraprobar las operaciones sobre matrices (*variable dimensionada*).
  ```
    program matrixMultiplication:
      define mat1 as Integer[3,3].
      define mat2 as Integer[3,3].
      define result as Integer[3,3].

      mat1[0,0] = 3 .
      mat1[0,1] = 7 .
      mat1[0,2] = 4 .
      mat1[1,0] = 1 .
      mat1[1,1] = 9 .
      mat1[1,2] = 9 .
      mat1[2,0] = 5 .
      mat1[2,1] = 4 .
      mat1[2,2] = 2 .

      mat2[0,0] = 4 .
      mat2[0,1] = 2 .
      mat2[0,2] = 1 .
      mat2[1,0] = 8 .
      mat2[1,1] = 2 .
      mat2[1,2] = 9 .
      mat2[2,0] = 10 .
      mat2[2,1] = 1 .
      mat2[2,2] = 7 .

      define i as Integer = 0 .
      define j as Integer = 0 .
      define k as Integer = 0 .

      while(i < 3):
        j = 0 .
        while(j < 3):
          k = 0 .
          result[i,j] = 0 .
          while(k < 3):
            result[i,j] = result[i,j] + (mat1[i,k] * mat2[k,j]).
            k = k + 1 .
          end while
          j = j + 1 .
        end while
        i = i + 1 .
      end while

      i = 0 .
      while(i < 3):
        j = 0 .
        while(j < 3):
          print(result[i,j]).
          j = j + 1 .
        end while
        i = i + 1 .
      end while
    end program
  ```
  ```
  Starting compilation...
  Compilation finished successfully.
  Starting execution...
  108
  24
  94
  166
  29
  145
  72
  20
  55
  Program finished successfully.
  ```

  * *Universidad*: Un programa que muestra la funcionalidad orientada a objetos (*Clases, Herencia y Objetos*) que tiene `Hephaestus`.

#### 1.4 Descripción del proceso de desarrollo

  El proyecto fue dividido en varias etapas, de esta forma avanzamos con el proyecto a la par con los temas vistos en clase de Diseño de compiladores.

  - *Análisis léxico y sintaxis*: En esta etapa se creo el scanner y el parser con la herramienta `antlr`. El programa compila y detecta los errores de sintaxis.

  - *Semántica básica de variables*: En esta etapa se creó la semántica básica de variables, el directorio de variables y directorio de procedimientos.

  - *Semántica básica de Expresiones*: En esta etapa se creó el cubo semántico, la generación de código de expresiones aritméticas y estatutos secuenciales (*read, write y asignación*).

  - *Generación de código de estatutos condicionales*: En esta etapa generamos el código para los estatutos condicionales (*if-else*).

  - *Generación de código de funciones*: En esta etapa generamos el código para las funciones y para los métodos de clases.

  - *Máquina virtual ejecución de expresiones aritméticas y estatutos secuenciales*: En esta etapa empezamos a desarrollar la maquina virtual empezando con las expresiones aritméticas y estatutos secuenciales.

  - *Generación de código de arreglos y ejecución de estatutos condicionales*: En esta etapa generamos el código de arreglos y matrices. También agregamos a la maquina virtual los estatutos condicionales.

  - *Generación de código y máquina virtual faltante*: En la ultima etapa del proyecto, se trabajo en la generación de código para los objetos de clase y en la ejecución de clases. Ademas se crearon pruebas y se arreglaron errores encontrados en las pruebas.

**Reflexión de Bárbara Martínez**

**Reflexión Jorge Elizondo**

### 2. Descripción del lenguaje
En esta sección hablaremos acerca del lenguaje desarrollado; su nombre, principales características y los posibles errores que pueden surgir en compilación y ejecución.

#### 2.1 Nombre del lenguaje
El nombre del lenguaje es `Hephaestus` como el dios griego al que se le atribuye la tecnología.

#### 2.2 Descripción de las principales características del lenguaje
A continuación, listamos las características principales de `Hephaestus`:
  - Es un lenguaje con sintaxis fácil de comprender, similar al usado en el día a día

  - El lenguaje es Orientado a Objetos

  - Permite la declaración de clases y herencia entre ellas

  - Permite la declaración de funciones con o sin retorno

  - Permite el uso de recursividad

  - Permite la declaración y uso de variables dimensionadas

  - Cuenta con características básicas de cualquier lenguaje de programación, es decir: declaración de variables, estatutos cíclicos y secuenciales, operaciones aritméticas, lógicas y de asignación, impresión y lectura del teclado

#### 2.3 Descripción de los posibles errores
`Hephaestus` puede detectar errores tanto en compilación como en ejecución, estos son algunos de esos errores separados por etapa.

 **Compilación**:
  - Error si se intenta sobrescribir alguna clase, función o variable en el contexto actual

  - Error si una clase intenta heredar de una clase que no existe

  - Error si se intenta usar una variable, función o clase que no existe

  - Error al tratar de utilizar operadores no válidos entre diferentes tipos de datos

  - Error al utilizar operadores lógicos con tipos de datos que no son Bool

  - Error al intentar asignar un valor a una variable de diferente tipo de dato al declarado

  - Error al mandar a llamar una función con más o menos parámetros de los esperados

  - Error al intentar accesar a una variable dimensionada con más o menos dimensiones diferentes a las declaradas.

 **Ejecución**:
  - Error si se intenta accesar a una posición inexistente de una variable dimensionada

  - Error si el input del usuario es de un tipo diferente al de la variable que se le quiere asignar

Cada vez que el compilador o la máquina virtual se encuentra con uno de estos errores, se muestra al usuario el mensaje de error apropiado y se detiene la compilación o la ejecución.

### 3. Descripción del compilador

En esta sección se describen todos los componentes que forman parte del compilador como el lenguaje que se utilizó, el análisis léxico y sintáctico, generación de código intermedio, análisis semántico y el proceso de administración de memoria.

#### 3.1 Equipo de cómputo, lenguaje y utilerías usadas en el proyecto   

El equipo de cómputo que se utilizo para desarrollar el compilador: dos Macbook Pros. El lenguage utilizado es `Ruby` y la herramienta utilizada es `antlr`. Antlr es una herramineta que te permite crear el scanner y el parser.

#### 3.2 Descripción del Análisis de Léxico
A continuación se muestra el léxico de `Hephaestus` es decir: expresiones regulares de los tipos de datos, los tokens y las palabras reservadas del lenguaje.

* **Patrones de construcción de los elementos principales**

| Tipo de dato    | Expresión Regular                             |
| :-------------: |:---------------------------------------------:|
| Integer         |  `('0' .. '9')+`                              |
| Float           | `('0' .. '9')+ '.' ('0' .. '9')`              |
| String          | <code>'\'' ( ~( '\'' &#x7c; '\\' ) &#x7c; '\\' . )* '\'' &#x7c; '"'  ( ~( '"'  &#x7c; '\\' ) &#x7c; '\\' . )* '"'</code> |
| Bool            | <code>true &#x7c; false</code>                |
| ID              | <code>( 'a' .. 'z' &#x7c; 'A' .. 'Z' ) ( ( 'a' .. 'z' &#x7c; 'A' .. 'Z' ) &#x7c; '_' &#x7c; ('0' .. '9') )*</code>    |

* **Tokens del lenguaje y código asociado**

| Nombre    | Carácter    | Token   |
| :------:  | :---------: | :-----: |
| DIV       | `/`         | 11      |
| EQ        | `==`        | 14      |
| GREATER   | `>`         | 6       |
| GREATEQ   | `>=`        | 6       |
| LESS      | `<`         | 6       |
| LEQ       | `<=`        | 6       |
| MINUS     | `-`         | 6       |
| MULT      | `*`         | 6       |
| NEQ       | `<>`        | 6       |
| PLUS      | `+`         | 6       |
| ASGN      | `=`         | 6       |
| COLON     | `:`         | 8       |
| COMMA     | `,`         | 9       |
| DOT       | `.`         | 12      |
| LBRACK    | `[`         | 6       |
| LPAR      | `(`         | 6       |
| RBRACK    | `]`         | 6       |
| RPAR      | `)`         | 6       |
| OBJ       | `@`         | 6       |

* **Palabras reservadas**

| Nombre    | Palabra      | Token   |
| :------:  | :---------:  | :-----: |
| AS        | `as`         | 5       |
| AND       | `and`        | 4       |
| R_BOOL    | `Bool`       | 7       |
| R_CLASS   | `class`      | 6       |
| DEFINE    | `define`     | 10      |
| R_END     | `end`        | 6       |
| ELSE      | `else`       | 13      |
| R_FLOAT   | `Float`      | 15      |
| FUNCTION  | `function`   | 6       |
| HER       | `inherits`   | 6       |
| IF        | `if`         | 6       |     
| R_INTEGER | `Integer`    | 6       |
| OR        | `or`         | 6       |
| PRINT     | `prin`       | 6       |
| PROGRAM   | `program`    | 6       |
| READ      | `read`       | 6       |
| RETURN    | `return`     | 6       |
| R_STRING  | `String`     | 6       |
| VOID      | `Void`       | 6       |
| WHILE     | `while`      | 6       |

#### 3.3 Descripción del Análisis de Sintaxis
A continuación se muestra la gramática formal de `Hephaestus`:
  ```
  start
    : ( r_class )* ( function )* program
    ;

  r_class
    : R_CLASS ID heritage? COLON ( function | dim_dec | var_dec )* R_END R_CLASS
    ;

  heritage
    :  HER ID
    ;

  program
    : PROGRAM  ID COLON ( estatute | dim_dec | var_dec )* R_END PROGRAM
    ;

  dim_dec
    : DEFINE ID AS type LBRACK INTEGER ( mat_dim )? RBRACK DOT
    ;

  mat_dim
    : COMMA INTEGER
    ;

  dim_struct
    : LBRACK exp ( COMMA exp )? RBRACK
    ;

  var_dec
    : DEFINE ID AS type ( ASGN ( super_expression | reading ) )? DOT
    ;

  function
    : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec)* ( RETURN super_expression DOT )? R_END FUNCTION
    ;

  parameters
    : LPAR ( type ID ( COMMA type ID )* )? RPAR
    ;

  estatute
    : assignment
    | condition
    | while_loop
    | writing
    | method_call DOT
    | func_call DOT
    ;

  method_call
    : ID OBJ method_call_2
    ;

  method_call_2
    : ID method_call_parameters
    ;

  method_call_parameters
    : LPAR ( ( super_expression ) ( COMMA ( super_expression ) )* )? RPAR
    ;

  assignment
    : ID ( dim_struct )? ( ASGN  ( super_expression | reading  ) ) DOT
    ;

  condition
    : IF LPAR super_expression RPAR COLON ( estatute )* ( ELSE  block| R_END ) IF
    ;

  while_loop
    : WHILE LPAR super_expression RPAR block WHILE
    ;

  block
    : COLON ( estatute )*  R_END
    ;

  reading
    : READ LPAR RPAR
    ;

  writing
    : PRINT LPAR super_expression RPAR DOT
    ;

  func_call
    : ID func_call_parameters
    ;

  func_call_parameters
    : LPAR ( ( super_expression ) ( COMMA ( super_expression ) )* )? RPAR}
    ;

  super_expression
    : expression ( ( AND | OR ) expression )?
    ;

  expression
    : exp ( ( GREATER
            | GREATEQ
            | LESS     
            | LEQ
            | NEQ
            | EQ
            ) exp
          )?
    ;

  exp
    : term ( ( PLUS | MINUS ) term )*
    ;

  term
    : factor ( ( MULT | DIV ) factor )*
    ;

  factor
    : ID  (  dim_struct )? | LPAR super_expression RPAR | value | func_call| method_call
    ;

  type
    : R_STRING
    | R_BOOL
    | R_FLOAT
    | R_INTEGER
    | VOID
    | ID
    ;

  value
    : STRING
    | FLOAT
    | INTEGER
    | BOOL
    ;

  ```


#### 3.4 Descripción de Generación de Código Intermedio y Análisis Semántico

#### 3.5 Descripción del proceso Administración de Memoria
