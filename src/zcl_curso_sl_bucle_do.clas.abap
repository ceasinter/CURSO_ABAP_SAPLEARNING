CLASS zcl_curso_sl_bucle_do DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_bucle_do IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    CONSTANTS veces TYPE i VALUE 3.

    out->write( |------------------------------------------\n| &
                |       Bucle DO - ENDO - TIMES            \n| &
                |------------------------------------------| ).
    DO veces TIMES.
      out->write( |Soy un BUCLE DO iterando { veces } veces| ).
    ENDDO.
  ENDMETHOD.
ENDCLASS.
