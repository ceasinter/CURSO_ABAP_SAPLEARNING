CLASS zcl_curso_sl_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_hello_world IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    out->write( 'Hello World, programando en Abap Cloud desde Eclipse con ADT' ).
  ENDMETHOD.
ENDCLASS.
