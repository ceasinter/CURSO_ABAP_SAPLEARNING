CLASS zcl_curso_sl_asignacion DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_asignacion IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: var1 TYPE string,
          var2 TYPE i,
          var3 TYPE i,
          var4 TYPE i.

    var1 = 'Variable tipo String'.
    var2 = 17.
    var3 = var2.
    var4 = var2 + var3.

    out->write( 'Práctica de asignación de valores a variables' ).
    out->write( |Variable 1.....: { var1 } | ).
    out->write( |Variable 2.....: { var2 } | ).
    out->write( |Variable 3.....: { var3 } | ).
    out->write( |Variable 4.....: { var4 } | ).


*  SENTENCIA CLEAR PARA RESTABLECER LAS VARIABLES
    CLEAR: var1, var2, var3, var4.
    out->write( 'Restablecimiento de valores de variables' ).
    out->write( |Variable 1.....: { var1 } | ).
    out->write( |Variable 2.....: { var2 } | ).
    out->write( |Variable 3.....: { var3 } | ).
    out->write( |Variable 4.....: { var4 } | ).




  ENDMETHOD.
ENDCLASS.
