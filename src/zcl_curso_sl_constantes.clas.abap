CLASS zcl_curso_sl_constantes DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_constantes IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    CONSTANTS: const1 TYPE string VALUE 'Constante tipo String',
               const2 TYPE i VALUE 25,
               const3 TYPE c LENGTH 3 VALUE IS INITIAL.

    out->write( |Constante 1.....: { const1 } | ).
    out->write( |Constante 2.....: { const2 } | ).
    out->write( |Constante 3.....: { const3 } | ).

  ENDMETHOD.
ENDCLASS.
