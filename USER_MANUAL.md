# Hephaestus
`Hephaestus` es un lenguaje de programación orientado a objetos. Fue diseñado específicamente para persona que estén comenzando a programar ya que cuenta con una sintaxis muy amigable, parecida al lenguaje que utilizamos en el día a día.

## Tipos de datos
A continuación se muestran los tipos de datos que el lenguaje soporta y la manera correcta de invocarlos.

| Tipo     | Hephaestus |
| :---     | :--------- |
| Entero   | Integer    |
| Flotante | Float      |
| String   | String     |
| Booleano | Bool       |

## Operadores
A continuación se muestran los operadores disponibles en el lenguaje y su tipo.

| Operador | Tipo |
| :---     | :--- |
| `/`      | Aritmético |
| `*`      | Aritmético |
| `+`      | Aritmético |
| `-`      | Aritmético |
| `==`     | Lógico     |
| `>`      | Lógico     |
| `>=`     | Lógico     |
| `<`      | Lógico     |
| `<=`     | Lógico     |
| `<>`     | Lógico     |
| `and`    | Lógico     |
| `or`     | Lógico     |

*Nota: los operadores están ordenados por prioridad.*

## Caracteres especiales
Éstos son los caracteres especiales que maneja `Hephaestus`

| Carácter | Uso            |
| :---     | :---           |
| `=`      | Asignación     |
| `.`      | Final de línea |
| `@`      | Invocación     |

## Declaración de variables
`Hephaestus` es un lenguaje muy fácil de leer por lo que la declaración de variables se hace de la siguiente manera:

 ```
  define edad as Integer.
  define nombre as String = "Bárbara".
 ```
*Nota: String puede ser sustituido por cualquiera de los tipos de datos que acepta el lenguaje.*

También soporta el uso de variables dimensionadas como arreglos y matrices; se declaran de la siguiente manera:

 ```
  define arr as Integer[10].

  define mat as Integer[3,3].
 ```

## Asignación de variables dimensionadas
Para asignar valores a una variable dimensionada, se tiene que hacer de casilla en casilla.

```
  define arr as Integer[3].
  arr[0] = 1 .
  arr[1] = 2 .
  arr[2] = 3 .
```
*Nota: para hacer que el lenguaje sea lo más legible y amigable hacia el usuario, al asignar un valor numérico el fin de linea debe de estar separado por un espacio.*

## Declaración de funciones
`Hephaestus` permite declarar funciones en el contexto global y dentro de clases. La declaración de funciones se hace así:

```
  function Integer add(Integer a, Integer b):
    return a + b.
  end function
```
*Nota: Integer puede ser sustituido por cualquiera de los tipos de datos que acepta el lenguaje o por Void. En caso de que tu función sea Void, no es necesario poner el return.*

## Llamada de funciones
La invocación de funciones se hace de la siguiente manera:
```
  define sum as Integer.
  sum = add(5,10).
```

`Hephaestus` también permite que la llamada de una función sea parámetro para otra función, es decir permite la recursividad.

## Estructura de un if-else
El lenguaje cuenta con un estatuto condicional, el `ìf` y se puede utilizar así:
```
  if (1 < 2):
   // haz algo
  else:
   // haz otra cosa
  end if
```

## Estructura de un while
El lenguaje cuenta con un estatuto cíclico, el `while` y se puede utilizar así:
```
  while(5 <> 0):
    // haz algo
  end while
```
## Estructura de lectura
Para capturar información del usuario, se utiliza el siguiente estatuto:
```
  define input as String.

  input = read().
```
*Nota: la lectura solo se puede llevar acabo dentro de una asignación.*

## Estructura de la escritura
Para imprimir información a la consola, se utiliza el siguiente estatuto:
```
  print("Hello world!").
```
## Declaración de Clases
Siendo un lenguaje orientado a objetos, `Hephaestus` te permite declarar clases de la siguiente manera:
```
  class Person:
    define name as String.
    function Void init(String personName):
      name = personName.
    end function
  end class
```
*Nota: los inicializadores de clases son opcionales.*

### Herencia
`Hephaestus` le permite a tus clases heredar de otra clase y lo puedes lograr así:
```
  class Person:
    // Crea variables y métodos para tu persona.
  end class

  class Student inherits Person:
    // Crea variables y métodos para tu estudiante.
  end class
```
### Objetos
Puedes declarar objetos de tu clases del siguiente modo:
```
  class Student:
    // Crea variables y métodos para tu estudiante.
  end class

  program clase:
    define jorge as Student.
  end program
```
### Llamada a métodos de clase
La llamada a métodos de un objeto, utiliza el carácter especial de invocación `@`.

Ejemplo:
```
  class Student:
    define name as String.

    function Void setName(String studentName):
      name = studentName.
    end function
  end class

  program clase:
    define jorge as Student.

    jorge@setName("Jorge").
  end program
```
## Program
Cada archivo `.hep` debe contar con un `program` para poder llevar a cabo la ejecución del código.

## Orden de un archivo `.hep`
El orden es muy importante en `Hephaestus`, un archivo `.hep` debe tener primero las clases, luego las funciones y finalmente el `program`.

Ejemplo:
```
  class Student:
    define grade as Integer.

    function Void setGrade(Integer studentGrade):
      grade = studentGrade.
    end function
  end class

  function Integer add(Integer a, Integer b):
    return a + b.
  end function

  program clase:
    define jorge as Student.
    define addition as Integer = add( 50 , 70).
    jorge@setGrade(addition).
  end program
```

# Instalación
Para poder instalar el proyecto, es necesario tener la última versión de `Hephaestus` la cual puedes obtener del repositorio [oficial](https://github.com/bmbrina/Hephaestus).

Puedes bajar el `.zip` o copiarlo a tu máquina con el comando `git clone`.

*Nota: para usar el comando `git clone`, ese necesario tener `git` instalado en tu máquina.*
