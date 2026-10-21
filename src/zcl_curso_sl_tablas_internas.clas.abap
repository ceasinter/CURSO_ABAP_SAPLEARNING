CLASS zcl_curso_sl_tablas_internas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_tablas_internas IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA numeros TYPE TABLE OF i.  "TABLA INTERNA
    TYPES tt_string TYPE TABLE OF string.  "TABLA TIPO LOCAL
    DATA text1 TYPE tt_string.

    DATA text2 TYPE string_table.  "TABLA TIPO GLOBAL

*  AREAS DE TRABAJO
    DATA number TYPE i VALUE 1234.
    DATA text TYPE string.

    APPEND 4471 TO numeros.
    APPEND number TO numeros.
    APPEND 2 * number TO numeros.

    out->write( numeros ).

    CLEAR numeros.
    out->write( numeros ).


*    EXRESIONES DE TABLAS
    APPEND 4471 TO numeros.
    APPEND number TO numeros.
    APPEND 2 * number TO numeros.
    number = numeros[ 2 ].
    out->write( |Contenido de fila 2...: { number }| ).
    out->write( |Contenido de fila 1...: { numeros[ 1 ] }| ).


*LOOP
    LOOP AT numeros INTO number.
      out->write( |Fila..: { sy-tabix } Contenido..: { number }| ).
    ENDLOOP.

* LOOP CON DECLARACIÓN INLINE
    LOOP AT numeros INTO DATA(number_inline).
      out->write( |Fila...: { sy-tabix } Contenido...: { number_inline }| ).
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
