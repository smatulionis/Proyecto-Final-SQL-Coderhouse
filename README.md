# Proyecto Base de Datos Colegio

Este proyecto se realizó para aprobar el curso de SQL de Coderhouse. El repositorio contiene los archivos de creación y población de una base de datos para gestionar la información de un colegio; incluyendo tablas, vistas, procedimientos almacenados y funciones.

## Índice

- [Estructura de la base de datos](#estructura-de-la-base-de-datos)
  - [Tablas](#tablas)
  - [Vistas](#vistas)
  - [Procedimientos almacenados y funciones](#procedimientos-almacenados-y-funciones)
- [Tecnologías utilizadas](#tecnologías-utilizadas)
- [Archivos incluidos](#archivos-incluidos)
- [Uso](#uso)
- [Contacto](#contacto)
 
## Estructura de la base de datos

La base de datos está compuesta por las siguientes tablas:

- `alumnos`: Almacena información sobre los alumnos, incluyendo su nombre, apellido, correo electrónico, dirección, curso al que pertenecen y nota asociada.
- `cursos`: Contiene la información de los cursos disponibles en el colegio.
- `materias`: Guarda los datos de las materias impartidas en el colegio, incluyendo el curso al que pertenecen y el examen asociado.
- `profesores`: Almacena información sobre los profesores que imparten clases en el colegio.
- `notas`: Contiene las notas asociadas a los alumnos, incluyendo las notas de los dos semestres.
- `examenes`: Guarda información sobre los exámenes disponibles, incluyendo el tipo de examen y las fechas de los dos exámenes posibles.
- `log`: Registra las modificaciones realizadas en la base de datos.

## Vistas

El repositorio también incluye varias vistas que proporcionan diferentes perspectivas de los datos almacenados en la base de datos. Algunas de las vistas incluidas son:

- `alumnos_5toa`: Muestra el nombre completo de los alumnos y el curso al que están inscriptos.
- `cursos_materias`: Presenta una lista de los cursos disponibles junto con las materias que se enseñan en cada uno.
- `cursos_profesores`: Muestra los cursos junto con los profesores asignados a cada uno.
- `dias_examen`: Proporciona información sobre las fechas de los exámenes de cada materia, incluyendo la diferencia en días entre el primer y segundo examen.
- `notas_promedio`: Calcula el promedio de las notas obtenidas por cada alumno.

## Procedimientos almacenados y funciones

En este repositorio también se incluyen varios procedimientos almacenados y funciones que facilitan la gestión de la base de datos. Algunos de ellos son:

- `sp_insertar_nota`: Procedimiento almacenado para insertar una nueva nota en la tabla de notas.
- `sp_ordenar_por_campo`: Procedimiento almacenado que permite ordenar los datos de una tabla según un campo específico y en un orden ascendente o descendente.
- `curso_alumno`: Función que devuelve el nombre del curso en el que está inscrito un alumno dado su ID.
- `dia_primer_examen`: Función que devuelve el día de la semana en que se realiza el primer examen de una materia dado su ID.

## Tecnologías utilizadas

La base de datos del colegio fue creada y gestionada utilizando las siguientes tecnologías y herramientas:

- **MySQL**: Se utilizó MySQL como sistema de gestión de bases de datos relacional para almacenar y administrar los datos del colegio.
- **SQL**: El lenguaje SQL (Structured Query Language) se utilizó para definir la estructura de la base de datos, realizar consultas y manipular los datos.

## Archivos incluidos

- `colegio.sql`: Archivo SQL que contiene el script de creación de la base de datos junto con los comandos para poblar las tablas con datos de ejemplo.
- `README.md`: Este archivo que proporciona información sobre la base de datos y su contenido.

## Uso

Para utilizar esta base de datos, sigue los siguientes pasos:

1. Importa el archivo `colegio.sql` en tu sistema de gestión de bases de datos MySQL.
2. Ejecuta el script para crear la estructura de la base de datos y poblar las tablas con datos de ejemplo.

## Contacto

Si tienes alguna pregunta, sugerencia o comentario sobre este proyecto, puedes contactarme por correo electrónico a [smatulionis@live.com.ar](mailto:smatulionis@live.com.ar) o a través de mi perfil de Linkedin en [Sebastián Ezequiel Matulionis](https://www.linkedin.com/in/smatulionis/).
