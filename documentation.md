- Reflexiones
- Caso de prueba de Objetos

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
El equipo de cómputo que se utilizo para desarrollar el compilador: dos Macbook Pros. El lenguaje utilizado es `Ruby` y la herramienta utilizada es `antlr`. Antlr es una herramineta que te permite crear el scanner y el parser.

#### 3.2 Descripción del Análisis de Léxico
A continuación se muestra el léxico de `Hephaestus` es decir: expresiones regulares de los tipos de datos, los tokens y las palabras reservadas del lenguaje.

* **Patrones de construcción de los elementos principales**

| Tipo de dato    | Expresión Regular | Token |
| :-------------: |:----------------- | :----:
| Integer         |  `('0' .. '9')+`  | 22 |
| Float           | `('0' .. '9')+ '.' ('0' .. '9')`| 15 |
| String          | <code>'\'' ( ~( '\'' &#x7c; '\\' ) &#x7c; '\\' . )* '\'' &#x7c; '"'  ( ~( '"'  &#x7c; '\\' ) &#x7c; '\\' . )* '"'</code> | 46 |
| Bool           | <code>true &#x7c; false</code>| 7 |
| ID             | <code>( 'a' .. 'z' &#x7c; 'A' .. 'Z' ) ( ( 'a' .. 'z' &#x7c; 'A' .. 'Z' ) &#x7c; '_' &#x7c; ('0' .. '9') )*</code>    | 20 |

* **Tokens del lenguaje y código asociado**

| Nombre    | Carácter    | Token   |
| :------:  | :---------: | :-----: |
| DIV       | `/`         | 11      |
| EQ        | `==`        | 14      |
| GREATER   | `>`         | 18      |
| GREATEQ   | `>=`        | 17      |
| LESS      | `<`         | 25      |
| LEQ       | `<=`        | 24      |
| MINUS     | `-`         | 27      |
| MULT      | `*`         | 28      |
| NEQ       | `<>`        | 29      |
| PLUS      | `+`         | 33      |
| ASGN      | `=`         | 6       |
| COLON     | `:`         | 8       |
| COMMA     | `,`         | 9       |
| DOT       | `.`         | 12      |
| LBRACK    | `[`         | 23      |
| LPAR      | `(`         | 26      |
| RBRACK    | `]`         | 36      |
| RPAR      | `)`         | 39      |
| OBJ       | `@`         | 31      |

* **Palabras reservadas**

| Nombre    | Palabra      | Token   |
| :------:  | :---------:  | :-----: |
| AS        | `as`         | 5       |
| AND       | `and`        | 4       |
| R_BOOL    | `Bool`       | 40      |
| R_CLASS   | `class`      | 41      |
| DEFINE    | `define`     | 10      |
| R_END     | `end`        | 42      |
| ELSE      | `else`       | 13      |
| R_FLOAT   | `Float`      | 43      |
| FUNCTION  | `function`   | 16      |
| HER       | `inherits`   | 19      |
| IF        | `if`         | 21      |     
| R_INTEGER | `Integer`    | 44      |
| OR        | `or`         | 32      |
| PRINT     | `prin`       | 34      |
| PROGRAM   | `program`    | 35      |
| READ      | `read`       | 37      |
| RETURN    | `return`     | 38      |
| R_STRING  | `String`     | 45      |
| VOID      | `Void`       | 47      |
| WHILE     | `while`      | 48      |

#### 3.3 Descripción del Análisis de Sintaxis
A continuación se muestra la gramática formal de `Hephaestus`:
  ```antlr
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

##### 3.4.1 Código de operación y direcciones virtuales asociadas

  Para la generación de código de operación usamos cuádruplos. Usamos diferentes tipos de cuádruplos para las acciones que se deban realizar. La descripción de los diferentes cuádruplos se pueden encontrar más adelante en la documentación. Para las direcciones virtuales usamos hashes (diccionarios en `Ruby`), para separar contextos creamos objetos de tipo `Context`. Cada `Context` tiene su propio hash de direcciones virtuales.

#####  3.4.2 Diagramas de Sintaxis con las acciones correspondientes**
En esta parte mostraremos los diagramas de sintaxis de `Hephaestus`, indicando que hace cada punto neurálgico, en caso de que tenga uno.

**1. START**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/start.png?raw=true "Start")
1. Al comenzar a leer un archivo `.hep` se genera el cuádruplo `GOTO` al `program` en el código y guarda el contador de cuádruplos en la pila de saltos.

**2. CLASS**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/class.png?raw=true "Class")

1. Verifica que no exista una clase con el mismo nombre, agrega la clase al directorio de clases.

2. Verificar si existe la clase padre, agregar su directorio de variables y de funciones a la clase nueva.

3. Reiniciar el contexto de la clase

**3. FUNCTION**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/function.png?raw=true "Function")

1. Verifica que no exista una función con el mismo nombre, agrega la función al directorio de funciones.

2. Genera cuádruplo de return.

3. Reiniciar el contexto de la función

**4. PROGRAM**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/program.png?raw=true "Program")

1.  Llena el primer cuádruplo (goto) con el numero del cuádruplo.

2.  Termina la generación de cuádruplos y la compilación.

**5. DIM_DEC**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/dim_dec.png?raw=true "Dim_Dec")

1. Verifica que no exista alguna variable con el mismo nombre, agrega la variable a la tabla de variables y llena el campo `is_dim`  con `true`.

2. Crea un estructura de dimensión y se la agrega a la variable.

3. Agrega el limite a la estructura correspondiente y calcula su respectiva *R*.

4. Guarda la última *R* calculada como el tamaño de la variable dimensionada y calcula la *M* de cada estructura. Como los arreglos tienen un solo limite, le asigna 0 a la *M* de la última estructura.

5. Reinicia la *R*.

**6. VAR_DEC**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/var_dec.png?raw=true "Var_Dec")

1. Verifica que no exista alguna variable con el mismo nombre, agrega la variable a la tabla de variables.

2. Agrega el id a la pila de ids y agrega el `=` a la pila de operadores.

3. Genera el estatuto de asignación.

4. Genera el estatuto de asignación, no revisa tipos por ser input del usuario.

**7. PARAMETERS**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/parameters.png?raw=true "Parameters")

**8. ESTATUTE**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/estatute.png?raw=true "Estatute")

**9. METHOD CALL**


![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/method_call.png?raw=true "Method_Call")

1. Verifica si el método existe.

2. Se genera el cuádruplo `ERA`

3. Obtiene el valor de retorno, si hay uno.

**10. FUNCTION CALL**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/function_call.png?raw=true "Function_Call")

1. Verifica si la función existe.

2. Se genera el cuádruplo `ERA`

3. Obtiene el valor de retorno, si hay uno.

**11. CALL PARAMETERS**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/call_parameters.png?raw=true "Call_Parameters")

1. Genera el cuádruplo `PARAMETER` para pasar los valores a la función.

2. Verifica la cantidad de parametros que se están pasando.

3. Genera el cuácuádruplo `GOSUB`.

**12. ASSIGNMENT**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/assignment.png?raw=true "Assignment")

1. Verifica que la variable exista, agrega el id a la pila de ids.

2. Si la variable es dimensionada, verifica que los corchetes estén presentes.

3. Agrega el `=` a la pila de operadores.

4. Genera el estatuto de asignación.

5. Genera el estatuto de asignación, no revisa tipos por ser input del usuario.

**13. DIMENSION STRUCTURE**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/dim_struct.png?raw=true "Dim_Struct")

1. Verifica que la variable sea dimensionada.

2. Genera el cuádruplo `VERIFICAR`.

3. Incrementa la dimensión de la variable.

4. Genera los cuádruplos para accesar a una variable dimensionada.

**14. CONDITION**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/condition.png?raw=true "Condition")

1. Saca el tipo del último ID, verifica que sea Bool. Genera cuádruplo `GOTOF` y agrega el contador actual a la pila de saltos.

2. Genera el cuádruplo `GOTO`, saca el último valor de la pila de saltos y rellena el cuádruplo correspondiente con el contador actual + 1.

3. Saca el último valor de la pila de saltos y rellena el cuádruplo correspondiente con el contador actual.

**15. WHILE**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/while.png?raw=true "While")

1. Agrega el contador actual a la pila de saltos.

2. Genera el cuádruplo `GOTO`, saca el último valor de la pila de saltos y rellena el cuádruplo correspondiente con el contador actual + 1.

3. Saca el último valor de la pila de saltos y rellena el cuádruplo correspondiente. Genera el cuádruplo `GOTO` y lo rellena con el último valor de la pila de saltos.

**16. BLOCK**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/block.png?raw=true "Block")

**17. READING**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/reading.png?raw=true "Reading")

1. Genera el cuádruplo `read`.

**18. WRITING**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/writing.png?raw=true "Writing")

1. Saca el último id de la pila de ids y genera el cuádruplo `print`.

**19. SUPER EXPRESSION**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/super_expression.png?raw=true "Super_Expression")

1. Agregar operador a la pila de operadores.

2. Revisar si hay alguna operación de este tipo pendiente. Si lo hay genera cuádruplo con el último operador de la pila de operadores y los últimos dos ids de la pila de ids.
**20. EXPRESSION**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/expression.png?raw=true "Expression")

1. Agregar operador a la pila de operadores.

2. Revisar si hay alguna operación de este tipo pendiente. Si lo hay genera cuádruplo con el último operador de la pila de operadores y los últimos dos ids de la pila de ids.

**21. EXP**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/exp.png?raw=true "Exp")

1. Revisar si hay alguna operación de este tipo pendiente. Si lo hay genera cuádruplo con el último operador de la pila de operadores y los últimos dos ids de la pila de ids.

2. Agregar operador a la pila de operadores.

**22. TERM**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/term.png?raw=true "Term")

1. Revisar si hay alguna operación de este tipo pendiente. Si lo hay genera cuádruplo con el último operador de la pila de operadores y los últimos dos ids de la pila de ids.

2. Agregar operador a la pila de operadores.

**23. FACTOR**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/factor.png?raw=true "Factor")

1. Agrega id a la pila de ids.

2. Agregar fondo falso a la pila de operadores.

3. Quitar fondo falso de la pila de operadores.

**24. TYPE**

![alt text](https://github.com/bmbrina/Hephaestus/blob/45d99cd71dfa4375fe5f9d7f51b00f582796e81f/Diagrams/type.png?raw=true "Type")


##### 3.4.3 Tabla de consideraciones semánticas

Para la consideraciones semánticas creamos una clase `SemanticsCube`, para crear el cubo usamos un hashes con llaves, las llaves son arreglos de 3 casillas, la primera y  segunda posición siendo tipos y la tercera siendo operadores.

|Tipos    | Referencia |
| :----:  | :------:   |
| Integer | 0          |
| Float   | 1          |
| Bool    | 2          |
| String  | 3          |
| Void    | 4          |

|Operadores lógicos| Referencia |
| :----:           | :-----:    |
| ==               | 5          |
| >                | 6          |
| >=               | 7          |
| <                | 8          |
| <=               | 9          |
| <>               | 10         |
| and              | 11         |
| or               | 12         |

|Operadores aritméticos| Referencia|
| :---:                | :---:      |
| +                    | 13         |
| -                    | 14         |
| \                    | 15         |
| *                    | 16         |

|Operadores Unarios| Referencia |
| :---:            | :---------:|
| =                | 17         |

**Cubo semántico:**

```
{[0, 0, 5]=>2, [0, 0, 6]=>2, [0, 0, 7]=>2, [0, 0, 8]=>2, [0, 0, 9]=>2, [0, 0, 10]=>2, [0, 0, 11]=>2, [0, 0, 12]=>2, [0, 0, 17]=>0,
[1, 1, 5]=>2, [1, 1, 6]=>2, [1, 1, 7]=>2, [1, 1, 8]=>2, [1, 1, 9]=>2, [1, 1, 10]=>2, [1, 1, 11]=>2, [1, 1, 12]=>2, [1, 1, 17]=>1,
[2, 2, 5]=>2, [2, 2, 6]=>2, [2, 2, 7]=>2, [2, 2, 8]=>2, [2, 2, 9]=>2, [2, 2, 10]=>2, [2, 2, 11]=>2, [2, 2, 12]=>2, [2, 2, 17]=>2,
[3, 3, 5]=>2, [3, 3, 6]=>2, [3, 3, 7]=>2, [3, 3, 8]=>2, [3, 3, 9]=>2, [3, 3, 10]=>2, [3, 3, 11]=>2, [3, 3, 12]=>2, [3, 3, 17]=>3,
[4, 4, 5]=>2, [4, 4, 6]=>2, [4, 4, 7]=>2, [4, 4, 8]=>2, [4, 4, 9]=>2, [4, 4, 10]=>2, [4, 4, 11]=>2, [4, 4, 12]=>2, [4, 4, 17]=>4,
[0, 1, 17]=>1, [0, 0, 16]=>1, [0, 0, 13]=>0, [0, 0, 14]=>0, [0, 0, 15]=>0, [0, 1, 13]=>1, [0, 1, 14]=>1, [0, 1, 15]=>1, [0, 1, 16]=>1,
[1, 1, 16]=>1, [1, 1, 13]=>1, [1, 1, 14]=>1, [1, 1, 15]=>1, [1, 0, 13]=>1, [1, 0, 14]=>1, [1, 0, 15]=>1, [1, 0, 16]=>1, [3, 3, 13]=>3}
```


#### 3.5 Descripción del proceso Administración de Memoria

En estas sección se muestran las estructuras más relevantes del programa.

**Especificación gráfica de las estructuras**

*Directorio de Clases*

 | Name | Inherits_of | context |
 | ---- | ----------- | ------- |
 |      |             |         ||

 * `Name` indica el nombre de la clase.
 * `Inherits_of` indica la clase padre, si no existe es nulo.
 * `Context` el contexto de la clase, aquí se encuentra el directorio de funciones y tabla de variables de la clase.

*Directorio de Funciones*

| Funtion_name | Parameters | Return_type | Quad_number |
| ------------ | ---------- | ----------  | ----------- |
|              |            |             |             ||

* `Function_name` indica el nombre de la función.
* `Parameters` guarda un arreglo de los parametros.
* `Return_type` indica el tipo de retorno.
* `Quad_number` indica el número de cuádruplo en el que comienza la función.

*Directorio de variables*

| Name | Type | Memory | Is_dim | Structures|
| ---- | ---- | ------ | ------ | --------- |
|      |      |        |        |           ||

* `Name` indica el nombre de la variable.
* `Type` indica el tipo de la variable.
* `Memory` indica la dirección de memoria de la variable.
* `Is_dim` es `true` si la variable es dimensionada, si no es nulo.
* `Structures` si la variable es dimensionada, contiene un arreglo con las estructuras dimensionales.

*Context*

 | Name | Context_type |
 | ---- | ------------ |
 |      |              ||

 * `Name` indica el nombre del contexto.
 * `Context_type` indica el tipo del contexto (*función, clase, global*).

### 4. Descripción de la máquina virtual
En este apartado hablaremos del proceso que se llevo a cabo para crea la máquina virtual, las herramientas utilizadas y la información que recibe.

#### 4.1 Equipo de cómputo, lenguaje y utilerías usadas en el proyecto
Al igual que en el compilador, el equipo de cómputo que se utilizo para desarrollar la máquina virtual: dos Macbook Pros. El lenguaje utilizado es `Ruby` y en este caso no utilizamos herramientas externas.

#### 4.2 Descripción del proceso Administración de Memoria
##### 4.2.1 Especificación gráfica de las estructuras
##### 4.2.2 Asociación hecha entre las direcciones virtuales y las reales

### 5. Pruebas del funcionamiento del lenguaje
#### 5.1 Pruebas que comprueben el funcionamiento del proyecto

### 6. Listados documentados del proyecto
