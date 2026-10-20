CLASS zcl_curso_sl_condicional_if DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_condicional_if IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    CONSTANTS opcion TYPE i VALUE 0.
    out->write( '---------------------------------------' ).
    out->write( 'Estructura de Control - Condicional IF ' ).
    out->write( '---------------------------------------' ).

    IF opcion = 0.
      out->write( |El valor de la opción es.....: { opcion }| ).
    ELSE.
      out->write( 'El valor de la opción equivale a cualquier otro número diferente a 0 - CERO' ).
      out->write( |El valor de opción es........: { opcion }| ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
