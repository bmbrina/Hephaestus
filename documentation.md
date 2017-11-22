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

  | | |
  | :-----------------  | :----------|
  | **Nombre**          | Compilar código con error y mostrar el error |
  | **ID**              | CU01 |
  | **Requerimientos**  | RF17, RF19 |
  | **Propósito**       | Terminar la compilación del programa en cuanto encuentre un error y mostrarlo al usuario|
  | **Precondiciones**  | El usuario tiene un archivo `.heph` con el código que desea compilar |
  | **Postcondiciones** | Se detiene la compilación y despliega un mensaje de error.|
  | **Flujo Normal**    | <ol><li>Ingresar el nombre del archivo</li><li>Compilar el programa</li><li>Se detecta un error y para la compilación</li><li>Muestra el error al usuario</li></ol>

  | | |
  | :-----------------  | :----------|
  | **Nombre**          | Compilar código sin error |
  | **ID**              | CU02 |
  | **Requerimientos**  | RF01 .. RF016 |
  | **Propósito**       | Generar el código compilado|
  | **Precondiciones**  | No haber errores en el archivo `.heph`|
  | **Postcondiciones** | Se despliega un mensaje indicando que el archivo compilo exitosamente|
  | **Flujo Normal**    | <ol><li>Se Ingresa el nombre del archivo `.heph` del programa a compilar</li><li>Compilar el programa</li><li> Se genera el código compilado</li></ol>

  | | |
  | :-----------------  | :----------|
  | **Nombre**          | Ejecutar código con error y mostrar el error    |
  | **ID**              | CU03        |
  | **Requerimientos**  | RF18, RF19
  | **Propósito**       | Detener la ejecución del programa cuando se encuentra un error y mostrarlo al usuario|
  | **Precondiciones**  | La máquina virtual recibió los cuádruplos de la compilación.|
  | **Postcondiciones** | Se detiene la ejecución y despliega un mensaje de error. |
  | **Flujo Normal**    | <ol><li>Muestra mensaje de que comenzó la ejecución</li><li>Ejecuta el programa</li><li>Se detecta un error y para la ejecución</li><li>Muestra el error al usuario</li></ol>

  | | |
  | :-----------------  | :----------|
  | **Nombre**          | Ejecutar código sin error |
  | **ID**              | CU04      |
  | **Requerimientos**  | RF01 .. RF016 |
  | **Propósito**       | Ejecutar el programa del usuario |
  | **Precondiciones**  | No haber errores de compilación |
  | **Postcondiciones** | Mostrar el resultado de la ejecución del programa |
  | **Flujo Normal**    | <ol><li>Muestra mensaje de que comenzó la ejecución</li><li>Ejecutar el programa</li><li> Mostrar el resultado del programa</li></ol> 

#### 1.3 Descripción de los principales Test Cases

  Los principales casos de prueba fueron desarrollados para comprobar la funcionalidad del compilador, fueron divididos para probar los casos específicos:

  - **Casos de prueba:**

  * *Fibonacci y Factorial iterativo*: Programas para probar los estatutos condicionales (*if-else*) y el estatuto cíclico (*while*).

  * *Fibonacci y Factorial recursivo*: Programas para probar el uso de *funciones recursivas*.

  * *Find y Sort*: Programas para probar las operaciones sobre vectores (*variable dimensionadas*).

  * *Multiplcación de matrices*: Un programa paraprobar las operaciones sobre matrices (*variable dimensionada*).

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

**Reflexión Bárbara Martínez**

  Emprender este proyecto fue un gran reto personal, ya que tuve la oportunidad de combinar varias áreas de conocimiento que he adquirido a lo largo de la carrera. Tuvimos un comienzo difícil al tardar en que nos aceptaran la propuesta, pero una vez aceptada tuvimos un buen desenlace en el desarrollo del compilador. Me gusto usar el lenguaje Ruby en el proyecto para poder familiarizarme con él ya que no lo había usado antes, me di cuenta que es un lenguaje muy fácil de aprender y me gustaría volver a trabajar con él en el futuro cercano. Por otro lado, una cosa que disfrute mucho de la clase es que conforme íbamos aprendiendo sobre un tema, al mismo tiempo lo aplicábamos sobre nuestro proyecto, esto me ayudo a consolidar el conocimiento de la clase. Finalmente, me di cuenta que para proyectos de esta magnitud, es esencial saber cómo organizar tu tiempo y que, por lo tanto, el mayor aprendizaje que me llevo es no dejar las cosas para el último minuto.

  <br/>
  <br/>
  <br/>
  | Firma Bárbara Martínez |

**Reflexión Jorge Elizondo**

  Para mi el proyecto fue un reto, es difícil hacer un proyecto tan grande y tan importante. Sin embargo hay algo en hacer tu propio lenguaje que llamo mi atención, como inventar la sintaxis y ver como el lenguaje se hace mucho mas amigable de utilizar. Me gusto la idea que la clase de Diseño de compiladores este fuertemente basada en el proyecto final, de esa forma creo yo, logre aprender mucho mejor los conceptos vistos en clase. Una lección que me llevo es que para proyectos grandes manejar el tiempo adecuadamente es esencial, hace el proyecto mucho más cómodo. Aprendi bastante del lenguaje Ruby, empece sabiendo lo básico del el pero después de programar mucho más de 1000 lineas en Ruby, me siento un experto aunque no lo sea :) .

  <br/>
  <br/>
  <br/>
  | Firma Jorge Elizondo |

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

4. Genera el cuádruplo de asignación.

5. Genera el cuádruplo de asignación, no revisa tipos por ser input del usuario.

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
En estas sección se muestran las estructuras más relevantes utilizadas dentro de la compilación del programa.

**Especificación gráfica de las estructuras**

*Directorio de Clases*

 | Name | Inherits_of | context |
 | ---- | ----------- | ------- |

 * `Name` indica el nombre de la clase.
 * `Inherits_of` indica la clase padre, si no existe es nulo.
 * `Context` el contexto de la clase, aquí se encuentra el directorio de funciones y tabla de variables de la clase.

*Directorio de Funciones*

| Funtion_name | Parameters | Return_type | Quad_number |
| ------------ | ---------- | ----------  | ----------- |

* `Function_name` indica el nombre de la función.
* `Parameters` guarda un arreglo de los parametros.
* `Return_type` indica el tipo de retorno.
* `Quad_number` indica el número de cuádruplo en el que comienza la función.

*Directorio de variables*

| Name | Type | Memory | Is_dim | Structures|
| ---- | ---- | ------ | ------ | --------- |

* `Name` indica el nombre de la variable.
* `Type` indica el tipo de la variable.
* `Memory` indica la dirección de memoria de la variable.
* `Is_dim` es `true` si la variable es dimensionada, si no es nulo.
* `Structures` si la variable es dimensionada, contiene un arreglo con las estructuras dimensionales.

*Context*

 | Name | Context_type |
 | ---- | ------------ |

 * `Name` indica el nombre del contexto.
 * `Context_type` indica el tipo del contexto (*función, clase, global*).

### 4. Descripción de la máquina virtual
En este apartado hablaremos del proceso que se llevo a cabo para crea la máquina virtual, las herramientas utilizadas y la información que recibe.

#### 4.1 Equipo de cómputo, lenguaje y utilerías usadas en el proyecto
Al igual que en el compilador, el equipo de cómputo que se utilizo para desarrollar la máquina virtual: dos Macbook Pros. El lenguaje utilizado es `Ruby` y en este caso no utilizamos herramientas externas.

#### 4.2 Descripción del proceso Administración de Memoria
En estas sección se muestran las estructuras más relevantes utilizadas dentro de la ejecución del programa.

##### 4.2.1 Especificación gráfica de las estructuras
Al momento de ejecutar el programa la memoria es una pila de hashes que contiene como llave una dirección virtual. La llave también puede ser un String, esto significa que es el valor de un parámetro o el valor de retorno de una función.

- Ejemplo:

```
  {
      "param0"=>15,
      1001=>15,
      1002=>false,
      1003=>13,
      "fibonacci"=>233,
      1004=>233,
      1005=>14
  }
```

##### 4.2.2 Asociación hecha entre las direcciones virtuales y las reales
En la etapa de compilación, cada vez que creamos una variable o un temporal le asignamos una dirección de memoria. Cada vez que el compilador detectaba una constante se le concatenaba un `%` para que poder identificarlos en la máquina virtual.

Esto de hizo con la finalidad de que la máquina virtual solamente tuviera que recibir los cuádruplos. Al llegar a ejecución se le asignan valores a esas direcciones virtuales.

### 5. Pruebas del funcionamiento del lenguaje

* *Factorial iterativo*:

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
  0: GOTO, , , 1
  1: =, %10, , 1000
  2: =, %1, , 1001
  3: =, %1, , 1002
  4: <=, 1002, 1000, 1004
  5: GOTOF, 1004, , 11
  6: *, 1001, 1002, 1005
  7: =, 1005, , 1001
  8: +, 1002, %1, 1006
  9: =, 1006, , 1002
  10: GOTO, , , 4
  11: print, 1001, ,  
```
```
    Starting compilation...
    Compilation finished successfully.
    Starting execution...
    3628800
    Program finished successfully.
```

* *Fibonacci recursivo*:

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
    0: GOTO, , , 20
    1: =, param0, , 1001
    2: <=, 1001, %2, 1002
    3: GOTOF, 1002, , 6
    4: =, %1, , 1001
    5: GOTO, , , 18
    6: ERA, , , fibonacci
    7: -, 1001, %2, 1003
    8: PARAM, 1003, , param0
    9: GOSUB, fibonacci, 1,
    10: =, fibonacci, , 1004
    11: ERA, , , fibonacci
    12: -, 1001, %1, 1005
    13: PARAM, 1005, , param0
    14: GOSUB, fibonacci, 1,
    15: =, fibonacci, , 1006
    16: +, 1004, 1006, 1007
    17: =, 1007, , 1001
    18: return, 1001, ,
    19: ENDFUNC, , ,
    20: ERA, , , fibonacci
    21: PARAM, %15, , param0
    22: GOSUB, fibonacci, 1,
    23: =, fibonacci, , 1009
    24: =, 1009, , 1007
    25: print, 1007, ,
```
```
    Starting compilation...
    Compilation finished successfully.
    Starting execution...
    6765
    Program finished successfully.
  ```

* *Sort*:

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
    0: GOTO, , , 1
    1: =, %5, , 1005
    2: VERIFICAR, %0, 0, 4
    3: +, %0, %1000, 1007
    4: =, %5, , (1007)
    5: VERIFICAR, %1, 0, 4
    6: +, %1, %1000, 1008
    7: =, %1, , (1008)
    8: VERIFICAR, %2, 0, 4
    9: +, %2, %1000, 1009
    10: =, %4, , (1009)
    11: VERIFICAR, %3, 0, 4
    12: +, %3, %1000, 1010
    13: =, %2, , (1010)
    14: VERIFICAR, %4, 0, 4
    15: +, %4, %1000, 1011
    16: =, %8, , (1011)
    17: =, %0, , 1011
    18: =, %0, , 1013
    19: -, 1005, %1, 1015
    20: <, 1011, 1015, 1016
    21: GOTOF, 1016, , 53
    22: =, %0, , 1013
    23: -, 1005, 1011, 1017
    24: -, 1017, %1, 1018
    25: <, 1013, 1018, 1019
    26: GOTOF, 1019, , 50
    27: VERIFICAR, 1013, 0, 4
    28: +, 1013, %1000, 1020
    29: +, 1013, %1, 1021
    30: VERIFICAR, 1021, 0, 4
    31: +, 1021, %1000, 1022
    32: >, (1020), (1022), 1023
    33: GOTOF, 1023, , 47
    34: VERIFICAR, 1013, 0, 4
    35: +, 1013, %1000, 1024
    36: =, (1024), , 1012
    37: VERIFICAR, 1013, 0, 4
    38: +, 1013, %1000, 1025
    39: +, 1013, %1, 1026
    40: VERIFICAR, 1026, 0, 4
    41: +, 1026, %1000, 1027
    42: =, (1027), , (1025)
    43: +, 1013, %1, 1028
    44: VERIFICAR, 1028, 0, 4
    45: +, 1028, %1000, 1029
    46: =, 1012, , (1029)
    47: +, 1013, %1, 1030
    48: =, 1030, , 1013
    49: GOTO, , , 23
    50: +, 1011, %1, 1031
    51: =, 1031, , 1011
    52: GOTO, , , 19
    53: =, %0, , 1011
    54: print, %"Sorted array:", ,
    55: <, 1011, 1005, 1032
    56: GOTOF, 1032, , 63
    57: VERIFICAR, 1011, 0, 4
    58: +, 1011, %1000, 1033
    59: print, (1033), ,
    60: +, 1011, %1, 1034
    61: =, 1034, , 1011
    62: GOTO, , , 55
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

* *Multiplcación de matrices*:

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
    0: GOTO, , , 1
    1: VERIFICAR, %0, 0, 2
    2: *, %0, %3, 1028
    3: VERIFICAR, %0, 0, 2
    4: +, 1028, %0, 1029
    5: +, 1029, %1000, 1030
    6: =, %3, , (1030)
    7: VERIFICAR, %0, 0, 2
    8: *, %0, %3, 1031
    9: VERIFICAR, %1, 0, 2
    10: +, 1031, %1, 1032
    11: +, 1032, %1000, 1033
    12: =, %7, , (1033)
    13: VERIFICAR, %0, 0, 2
    14: *, %0, %3, 1034
    15: VERIFICAR, %2, 0, 2
    16: +, 1034, %2, 1035
    17: +, 1035, %1000, 1036
    18: =, %4, , (1036)
    19: VERIFICAR, %1, 0, 2
    20: *, %1, %3, 1037
    21: VERIFICAR, %0, 0, 2
    22: +, 1037, %0, 1038
    23: +, 1038, %1000, 1039
    24: =, %1, , (1039)
    25: VERIFICAR, %1, 0, 2
    26: *, %1, %3, 1040
    27: VERIFICAR, %1, 0, 2
    28: +, 1040, %1, 1041
    29: +, 1041, %1000, 1042
    30: =, %9, , (1042)
    31: VERIFICAR, %1, 0, 2
    32: *, %1, %3, 1043
    33: VERIFICAR, %2, 0, 2
    34: +, 1043, %2, 1044
    35: +, 1044, %1000, 1045
    36: =, %9, , (1045)
    37: VERIFICAR, %2, 0, 2
    38: *, %2, %3, 1046
    39: VERIFICAR, %0, 0, 2
    40: +, 1046, %0, 1047
    41: +, 1047, %1000, 1048
    42: =, %5, , (1048)
    43: VERIFICAR, %2, 0, 2
    44: *, %2, %3, 1049
    45: VERIFICAR, %1, 0, 2
    46: +, 1049, %1, 1050
    47: +, 1050, %1000, 1051
    48: =, %4, , (1051)
    49: VERIFICAR, %2, 0, 2
    50: *, %2, %3, 1052
    51: VERIFICAR, %2, 0, 2
    52: +, 1052, %2, 1053
    53: +, 1053, %1000, 1054
    54: =, %2, , (1054)
    55: VERIFICAR, %0, 0, 2
    56: *, %0, %3, 1055
    57: VERIFICAR, %0, 0, 2
    58: +, 1055, %0, 1056
    59: +, 1056, %1009, 1057
    60: =, %4, , (1057)
    61: VERIFICAR, %0, 0, 2
    62: *, %0, %3, 1058
    63: VERIFICAR, %1, 0, 2
    64: +, 1058, %1, 1059
    65: +, 1059, %1009, 1060
    66: =, %2, , (1060)
    67: VERIFICAR, %0, 0, 2
    68: *, %0, %3, 1061
    69: VERIFICAR, %2, 0, 2
    70: +, 1061, %2, 1062
    71: +, 1062, %1009, 1063
    72: =, %1, , (1063)
    73: VERIFICAR, %1, 0, 2
    74: *, %1, %3, 1064
    75: VERIFICAR, %0, 0, 2
    76: +, 1064, %0, 1065
    77: +, 1065, %1009, 1066
    78: =, %8, , (1066)
    79: VERIFICAR, %1, 0, 2
    80: *, %1, %3, 1067
    81: VERIFICAR, %1, 0, 2
    82: +, 1067, %1, 1068
    83: +, 1068, %1009, 1069
    84: =, %2, , (1069)
    85: VERIFICAR, %1, 0, 2
    86: *, %1, %3, 1070
    87: VERIFICAR, %2, 0, 2
    88: +, 1070, %2, 1071
    89: +, 1071, %1009, 1072
    90: =, %9, , (1072)
    91: VERIFICAR, %2, 0, 2
    92: *, %2, %3, 1073
    93: VERIFICAR, %0, 0, 2
    94: +, 1073, %0, 1074
    95: +, 1074, %1009, 1075
    96: =, %10, , (1075)
    97: VERIFICAR, %2, 0, 2
    98: *, %2, %3, 1076
    99: VERIFICAR, %1, 0, 2
    100: +, 1076, %1, 1077
    101: +, 1077, %1009, 1078
    102: =, %1, , (1078)
    103: VERIFICAR, %2, 0, 2
    104: *, %2, %3, 1079
    105: VERIFICAR, %2, 0, 2
    106: +, 1079, %2, 1080
    107: +, 1080, %1009, 1081
    108: =, %7, , (1081)
    109: =, %0, , 1081
    110: =, %0, , 1082
    111: =, %0, , 1083
    112: <, 1081, %3, 1085
    113: GOTOF, 1085, , 158
    114: =, %0, , 1082
    115: <, 1082, %3, 1086
    116: GOTOF, 1086, , 155
    117: =, %0, , 1083
    118: VERIFICAR, 1081, 0, 2
    119: *, 1081, %3, 1087
    120: VERIFICAR, 1082, 0, 2
    121: +, 1087, 1082, 1088
    122: +, 1088, %1018, 1089
    123: =, %0, , (1089)
    124: <, 1083, %3, 1090
    125: GOTOF, 1090, , 152
    126: VERIFICAR, 1081, 0, 2
    127: *, 1081, %3, 1091
    128: VERIFICAR, 1082, 0, 2
    129: +, 1091, 1082, 1092
    130: +, 1092, %1018, 1093
    131: VERIFICAR, 1081, 0, 2
    132: *, 1081, %3, 1094
    133: VERIFICAR, 1082, 0, 2
    134: +, 1094, 1082, 1095
    135: +, 1095, %1018, 1096
    136: VERIFICAR, 1081, 0, 2
    137: *, 1081, %3, 1097
    138: VERIFICAR, 1083, 0, 2
    139: +, 1097, 1083, 1098
    140: +, 1098, %1000, 1099
    141: VERIFICAR, 1083, 0, 2
    142: *, 1083, %3, 1100
    143: VERIFICAR, 1082, 0, 2
    144: +, 1100, 1082, 1101
    145: +, 1101, %1009, 1102
    146: *, (1099), (1102), 1103
    147: +, (1096), 1103, 1104
    148: =, 1104, , (1093)
    149: +, 1083, %1, 1105
    150: =, 1105, , 1083
    151: GOTO, , , 124
    152: +, 1082, %1, 1106
    153: =, 1106, , 1082
    154: GOTO, , , 115
    155: +, 1081, %1, 1107
    156: =, 1107, , 1081
    157: GOTO, , , 112
    158: =, %0, , 1081
    159: <, 1081, %3, 1108
    160: GOTOF, 1108, , 176
    161: =, %0, , 1082
    162: <, 1082, %3, 1109
    163: GOTOF, 1109, , 173
    164: VERIFICAR, 1081, 0, 2
    165: *, 1081, %3, 1110
    166: VERIFICAR, 1082, 0, 2
    167: +, 1110, 1082, 1111
    168: +, 1111, %1018, 1112
    169: print, (1112), ,
    170: +, 1082, %1, 1113
    171: =, 1113, , 1082
    172: GOTO, , , 162
    173: +, 1081, %1, 1114
    174: =, 1114, , 1081
    175: GOTO, , , 159
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

* *Universidad*:

```
  class Person:
    define name as String.

    function Void setName(String personName):
      name = personName.
    end function

    function String getName():
      return name.
    end function

  end class

  class Student inherits Person:
    define grade as Float.

    function Void init(Float studentGrade, String personName):
      grade = studentGrade.
      name = personName.
    end function

    function Void setGrade(Float studentGrade):
      grade = studentGrade.
    end function

    function Float getGrade():
      return grade.
    end function

  end class

  program University:

    define jorge as Student.
    jorge@setName("Jorge").
    jorge@setGrade(100.0).

    define barbara as Student.
    barbara@setName("Barbara").
    barbara@setGrade(100.0).

    define steve as Student.
    steve@init(100.0,"Steve").

    print(steve@getName()).
    print(steve@getGrade()).

    print(jorge@getName()).
    print(barbara@getName()).

  end program
```
```
  0: GOTO, , , 16
  1: =, param0, , 1002
  2: =, 1002, , 1000
  3: ENDFUNC, , ,
  4: return, 1000, ,
  5: ENDFUNC, , ,
  6: =, param0, , 1004
  7: =, param1, , 1005
  8: =, 1004, , 1002
  9: =, 1005, , 1000
  10: ENDFUNC, , ,
  11: =, param0, , 1006
  12: =, 1006, , 1002
  13: ENDFUNC, , ,
  14: return, 1002, ,
  15: ENDFUNC, , ,
  16: ERA, jorge, , setName
  17: PARAM, %"Jorge", , param0
  18: GOSUB, setName, 1,
  19: =, setName, , 1008
  20: ERA, jorge, , setGrade
  21: PARAM, %100.0, , param0
  22: GOSUB, setGrade, 11,
  23: =, setGrade, , 1009
  24: ERA, barbara, , setName
  25: PARAM, %"Barbara", , param0
  26: GOSUB, setName, 1,
  27: =, setName, , 1011
  28: ERA, barbara, , setGrade
  29: PARAM, %100.0, , param0
  30: GOSUB, setGrade, 11,
  31: =, setGrade, , 1012
  32: ERA, steve, , init
  33: PARAM, %100.0, , param0
  34: PARAM, %"Steve", , param1
  35: GOSUB, init, 6,
  36: =, init, , 1014
  37: ERA, steve, , getName
  38: GOSUB, getName, 4,
  39: =, getName, , 1015
  40: print, 1015, ,
  41: ERA, steve, , getGrade
  42: GOSUB, getGrade, 14,
  43: =, getGrade, , 1016
  44: print, 1016, ,
  45: ERA, jorge, , getName
  46: GOSUB, getName, 4,
  47: =, getName, , 1017
  48: print, 1017, ,
  49: ERA, barbara, , getName
  50: GOSUB, getName, 4,
  51: =, getName, , 1018
  52: print, 1018, ,
```
```
  Compilation finished successfully.
  Starting execution...
  "Steve"
  100.0
  "Jorge"
  "Barbara"
  Program finished successfully.

```

### 6. Listados documentados del proyecto

#### Program Class, only relevant functions are shown.

  ```
  #######################
  # Description: This class is the most important, it handles the memory counter,
  # it stores the quadruple and manages the contexts
  # Parameters: ( main_context, type:Context),
  # (current_context, type:Context, description: ths context changes depending if
  # the class program is generating cuadruples for a class a function or a module),
  # (past_context, type:Context, description: the parent context of the current context),
  # ( quadruples,type:array),
  # ( memory_counter, Int, description: counter of the virtual memories assigned to variables)
  # Return value: N/A
  # Error handling: If necessary, each function handles its own errors.
  #######################
  class Program

    def initialize()
    end

    def set_next_memory()
    end

    def reset_context()
    end

    def reset_class_context()
    end

     #######################
     # Description: Adds a class to classes_directory in the current context and
     # changes the current_context the new class context
     # Parameters: (name, type:String), (inherits_of, type:String)
     # Return value: N/A
     # Error handling: Verifies that the class to be added does not exist
     #######################
     def add_class(name, inherits_of)
      if @current_context.classes_directory.classes[name] != nil
        puts "ERROR: redefinition of class #{name}."
        exit
      else
        @current_context.classes_directory.register(name, inherits_of, Context.new("#{name} context", "class"))
        @current_context = @current_context.classes_directory.classes[name].context
      end
    end

    #######################
    # Description: Adds the parent class functions and variables to the new class
    # Parameters: (parent_class, type:String)
    # Return value: N/A
    # Error handling: Verifies that the parent class exists
    #######################
    def inherits_class_context(parent_class)
      if @main_context.classes_directory.classes[parent_class] != nil
        parent_context = @main_context.classes_directory.classes[parent_class].context
        @current_context.functions_directory.functions = parent_context.functions_directory.functions.clone
        @current_context.variables_directory.variables = parent_context.variables_directory.variables.clone
      else
        puts "ERROR: the class #{parent_class} doesn't exist."
        exit
      end
    end

    #######################
    # Description: Adds a function to function_directory in the current context
    # Parameters: (header, type:String), (parameters, type:String), (return_type, type:String)
    # Return value: N/A
    # Error handling: Verifies that the funtion to be added does not exist
    #######################
    def add_function(header, parameters, return_type)
      if @current_context.functions_directory.functions[header] != nil
        puts "ERROR: redefinition of function #{header}."
        exit
      else
        @current_context.functions_directory.register(header, parameters, return_type, @quadruples.count)
        params = @current_context.functions_directory.functions[header].parameters
        @past_context = @current_context
        @current_context = Context.new("#{header} context", "function")
        params.each_with_index do | param , index |
          set_next_memory()
          @current_context.variables_directory.register(param.name, param.type, @memory_counter)
          quad = Quadruple.new("=", "param#{index}", nil, @memory_counter)
          add_quadruples(quad)
          @counter += 1
        end

      end
    end

    #######################
    # Description: Adds a variable to variables_directory in the current context
    # Parameters: (name, type:String), (type, type:String)
    # Return value: N/A
    # Error handling: Verifies that the variable to be added does not exist
    #######################
    def add_variable(name, type)
      if @current_context.variables_directory.variables[name] != nil
        puts "ERROR: redefinition of variable #{name}."
        exit
      else
        @current_context.variables_directory.register(name, type, @memory_counter)
        set_next_memory()
      end
    end

    def add_dim_variable(name, type, is_dim)
    end

    def add_quadruples(quad)
    end

    def finish()
    end

    def print_quadruples()
    end

  end

  ```

```

#######################
# Description: This class has the objective to create quadruples and solve neuralgic points code,
# it handles many issues and verifies semantic considerations with the SemanticCube class. It also
# communicates with the class program to see in which context to look. To start the quadruple factory,
# the class needs to know about the class progrma.
# Parameters: (program, type:Program)
# Return value: N/A
# Error handling: It handles many errors including all semantic considerations.
#######################
class QuadrupleFactory
  attr_accessor :param_index

  def initialize(program)
  end

  def goto_program()
  end

  def add_id(id, value)
  end

  def add_false_bottom(parentesis)
  end

  def remove_false_bottom()
  end

  def find_variable(id)
  end

  def get_variable(id)
  end

  def add_operator(operator)
  end

  def is_term_pending()
  end

  #######################
  # Description: Checks if an exp operation is pending
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def is_exp_pending()
    if @operators_stack.last() == '+' || @operators_stack.last() == '-'
      generate_quad()
    end
  end

  def is_expression_pending()
  end


  def is_super_expression_pending()
  end

  #######################
  # Description: Generates a read quadruple
  # Parameters: (id, type: String)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def read(id)
    var_type = get_variable(id).type
    quad = Quadruple.new('read', "%", @memory_stack.last(), var_type)
    @program.add_quadruples(quad)
    @program.counter += 1
  end


  def assgn_read()
  end

  #######################
  # Description: Generates a print quadruple
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def write()
    @ids_stack.pop()
    temp = @memory_stack.pop()
    type = @types_stack.pop()
    quad = Quadruple.new('print', temp, nil, nil)
    @program.add_quadruples(quad)
    @program.counter += 1
  end

  #######################
  # Description: Generates a gotof quadruple for a subrutine
  # Parameters: N/A
  # Return value: N/A
  # Error handling: Throws an error if the result isn't Bool.
  #######################
  def gotof()
    type = @types_stack.pop()
    if type == "Bool"
      @ids_stack.pop()
      result = @memory_stack.pop()

      quad = Quadruple.new('GOTOF', result, nil, nil)
      @program.add_quadruples(quad)
      @jumps_stack.push(@program.counter)
      @program.counter += 1
    else
      puts "ERROR: type mismatched, expecting Bool got #{type}."
      exit
    end
  end

  def fill_program_quad()
  end

  def fill_quad()
  end

  #######################
  # Description: Generates a goto quadruple for a subrutine
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def goto()
    quad = Quadruple.new('GOTO', nil, nil, nil)
    @program.add_quadruples(quad)
    fill_quad()
    @jumps_stack.push(@program.counter)
    @program.counter += 1
  end

  def add_jump()
  end

  def goto_while()
  end

  def variable_exists?(id)
  end

  def function_exists?(id)
  end

  def method_exists?(var_name, func_name)
  end

  #######################
  # Description: Generates an era quadruple for a function call
  # Parameters: (func_name, type:String)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def era(func_name)
    return_type = @program.past_context.functions_directory.functions[func_name].return_type
    @ids_stack.push(func_name)
    @memory_stack.push(func_name)
    @types_stack.push(return_type)
    quad = Quadruple.new('ERA', nil, nil, func_name)
    @program.add_quadruples(quad)
    @program.counter += 1
    @param_index = 0
  end

  def era_method(id, method_name)
  end


  def parameter(func_name)
  end

  def verify_func_param_count(func_name)
  end

  #######################
  # Description: Generates a gosub quadruple for a function call
  # Parameters: (func_name, type:String)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def go_sub(func_name)
    quad_number = @program.past_context.functions_directory.functions[func_name].quad_number
    quad = Quadruple.new('GOSUB', func_name, quad_number, nil)
    @program.add_quadruples(quad)
    @program.counter += 1
  end

  def go_sub_method(id, method_name)
  end

  def get_return_value()
  end

  #######################
  # Description: Generates a return quadruple when a function finishes
  # Parameters: (func_name, type:String)
  # Return value: N/A
  # Error handling: Throws an error if the return type is different from the one
  # specified in the function declaration
  #######################
  def return(func_name)
    func_type = @program.past_context.functions_directory.functions[func_name].return_type
    @ids_stack.pop()
    temp = @memory_stack.pop()
    temp_type = @types_stack.pop()

    if func_type != temp_type
      puts "ERROR: expected return type of #{func_type}, got #{temp_type}."
      exit
    else
      quad = Quadruple.new('return', temp, nil, nil)
      @program.add_quadruples(quad)
      @program.counter += 1
    end
  end

  def end_function()
  end

  def method_parameter(var_name, func_name)
  end

  def verify_method_param_count(var_name, func_name)
  end

  def assgn_quad()
  end

  def check_dim(id)
  end

  def is_dim()
  end

  #######################
  # Description: Generates quadruples to access a dimensional variable
  # Parameters: N/A
  # Return value: N/A
  # Error handling: Throws an error if you try to access a dimensional variable
  # with the wrong dimensions
  #######################
  def generate_limit_quad()
    id = @ids_stack.last()
    memory_id = @memory_stack.last()
    dim = @dim_stack.last()[1]
    dim_id = @dim_stack.last()[0]
    var_dim_structures = get_variable(dim_id).dim_structures
    if var_dim_structures[dim] == nil
      puts "ERROR: wrong dimension size for #{dim_id}."
      exit
    end
    limit = var_dim_structures[dim].limit
    m = var_dim_structures[dim].m
    quad = Quadruple.new("VERIFICAR", memory_id, 0, limit)
    @program.add_quadruples(quad)
    @program.counter += 1
    if var_dim_structures[dim + 1] != nil
      @ids_stack.pop()
      aux = @memory_stack.pop()
      @types_stack.pop()
      @program.set_next_memory()
      temp = @program.memory_counter
      quad = Quadruple.new('*', aux, "%#{m}", temp)
      @program.add_quadruples(quad)
      @program.counter += 1
      @ids_stack.push(temp)
      @memory_stack.push(temp)
      @types_stack.push('Integer')
    elsif dim > 0
      @ids_stack.pop()
      aux2 = @memory_stack.pop()
      @types_stack.pop()
      @ids_stack.pop()
      aux1 = @memory_stack.pop()
      @types_stack.pop()
      @program.set_next_memory()
      temp = @program.memory_counter
      quad = Quadruple.new('+', aux1, aux2, temp)
      @program.add_quadruples(quad)
      @program.counter += 1
      @ids_stack.push(temp)
      @memory_stack.push(temp)
      @types_stack.push('Integer')
    end
  end

  def update_dim()
  end

  def verify_dim_access()
  end

  #######################
  # Description: Generates a quadruple to access the value in a stored virtual
  # memory direction
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def generate_dim_quads()
    verify_dim_access()
    @ids_stack.pop()
    aux = @memory_stack.pop()
    @types_stack.pop()
    dim_id = @dim_stack.last()[0]
    dim_dir = get_variable(dim_id).memory_dir
    @program.set_next_memory()
    temp = @program.memory_counter
    quad = Quadruple.new('+', aux, "%#{dim_dir}", temp)
    @program.add_quadruples(quad)
    @program.counter += 1
    @ids_stack.push("(#{temp})")
    @memory_stack.push("(#{temp})")
    id_type = get_variable(dim_id).type
    @types_stack.push(id_type)
    remove_false_bottom()
    @dim_stack.pop()
  end

private
  #######################
  # Description: Generates quadruples for operations (arithmetic and logical)
  # Parameters: N/A
  # Return value: N/A
  # Error handling: Throws an error if you try to do an operation with invalid
  # variable types
  #######################
  def generate_quad()
    operator = @operators_stack.pop()
    operator_type = @sem_cube.convert[operator]
    @ids_stack.pop()
    right_side = @memory_stack.pop()
    right_side_type = @sem_cube.convert[@types_stack.pop()]
    @ids_stack.pop()
    left_side = @memory_stack.pop()
    left_side_type = @sem_cube.convert[@types_stack.pop()]
    type_res = @sem_cube.semantic_cube[[left_side_type, right_side_type, operator_type]]
    if type_res != nil
      @program.set_next_memory()
      temp = @program.memory_counter
      quad = Quadruple.new(operator, left_side, right_side, temp)
      @program.add_quadruples(quad)

      @ids_stack.push(temp)
      @memory_stack.push(temp)

      @types_stack.push(@sem_cube.invert[type_res])
      current_context = @program.current_context
      current_context.variables_directory.register(temp, @sem_cube.invert[type_res], @program.memory_counter)
      @program.counter += 1
    else
      puts "ERROR: variable type mismatched, received: #{left_side} and #{right_side}."
      exit
    end
  end

  def extract_value(value)
  end

  def match_value(value)
  end
end
```
