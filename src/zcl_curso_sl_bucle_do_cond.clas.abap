CLASS zcl_curso_sl_bucle_do_cond DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_bucle_do_cond IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    CONSTANTS lc_veces TYPE i VALUE 3.

    DATA(lv_veces) = lc_veces * lc_veces.
    DO.
      out->write( |{ sy-index }: Cantidad de Oportunidades....: { lv_veces }| ).
      lv_veces = lv_veces - 1.

*  ACÁ EL CONDICIONAL IF PARA ABORTAR LA EJECUCIÓN DEL PROGRAMA
      IF lv_veces <= lc_veces.
        out->write( |Ha llegado al final de las oportunidades.....: { lv_veces }| ).
        EXIT.
      ENDIF.
    ENDDO.

  ENDMETHOD.
ENDCLASS.
