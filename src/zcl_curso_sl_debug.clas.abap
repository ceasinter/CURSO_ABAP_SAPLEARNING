CLASS zcl_curso_sl_debug DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_debug IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lv_meses      TYPE i VALUE 0,
          lv_vacaciones TYPE i VALUE 10,
          lv_promedio   TYPE i.

    IF lv_meses NE 0.
      lv_promedio = lv_vacaciones / lv_meses.
      out->write( |Cantidad de meses........................: { lv_meses }\n| &
                  |Días de Vacaciones por mes...............: { lv_vacaciones }\n| &
                  |Promedio de día de vacaciones por mes....: { lv_promedio }| ).
    ELSE.
      out->write( |Revisar la variable MESES ya que se encuentra en..: { lv_meses }\n| &
                  |Es necesario corregir para determinar Promedio de días de vacaciones por Mes.| ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
