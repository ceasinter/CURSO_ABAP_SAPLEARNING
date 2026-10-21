CLASS zcl_curso_sl_prueba DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_prueba IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA var1 TYPE i VALUE 100.
    out->write( var1 ).
    CLEAR var1.
    out->write( var1 ).

  ENDMETHOD.
ENDCLASS.
