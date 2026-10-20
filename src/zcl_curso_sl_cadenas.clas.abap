CLASS zcl_curso_sl_cadenas DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_cadenas IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA(lv_monto1) = 3.
    DATA(lv_monto2) = 6.
    DATA(lv_moneda) = 'USD'.

    out->write( 'Pŕactica Funciones de Cadenas de Caracteres' ).
    out->write( |Concatenando| ).
    out->write( |{ lv_monto1 + lv_monto2 }| ).
    out->write( |{ lv_monto1 + lv_monto2 } USD| ).
    out->write( |{ lv_monto1 + lv_monto2 } { lv_moneda }| ).

*CADENAS DE UNIÓN - OPERADOR &&
    DATA(lv_part1) = 'Hello'.
    DATA(lv_part2) = 'World'.

    DATA(lv_resultado) = lv_part1 && lv_part2.
    lv_resultado = lv_part1 && | | && lv_part2.
    out->write( |Resultado......: { lv_resultado }| ).

*    DATA: resultado TYPE string,
*          part1     TYPE string VALUE 'Hello',
*          part2     TYPE string VALUE 'World'.
*
*    resultado = part1 && part2.
*    resultado = part1 && | | && part2.
*    out->write( |Resultado....: { resultado }| ).

*OPERADOR SPLIT
    DATA(lv_full_name) = 'Carlos Amaro'.
    DATA: lv_first_name TYPE string,
          lv_last_name  TYPE string.

    SPLIT lv_full_name AT ' ' INTO lv_first_name lv_last_name.
    out->write( |Probando Operador SPLIT - First Name.....: { lv_first_name }| ).
    out->write( |Probando Operador SPLIT - Last Name......: { lv_last_name }| ).
    out->write( |Full Name................................: { lv_full_name }| ).



  ENDMETHOD.
ENDCLASS.
