CLASS zcl_curso_sl_declaracion_case DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_declaracion_case IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA(lv_numero) = 3.
    CASE lv_numero.
      WHEN 0.
        out->write( |Valor del Número......: { lv_numero }| ).
      WHEN 1.
        out->write( |Valor del Número......: { lv_numero }| ).
      WHEN 4.
        out->write( |No se puede continuar porque Número es...: { lv_numero }| ).
      WHEN OTHERS.
        out->write( |Opción incorrecta. Número solo debe ser 0/1/4, usted ingresó...: { lv_numero }| ).
    ENDCASE.

    data(lv_pais) = 'Argentina'.
    case lv_pais.
    when 'Chile'.
    out->write( |Bienvenido a { lv_pais }| ).
    when 'Venezuela'.
    out->write( |Bienvenido a { lv_pais }| ).
    when 'Brasil'.
    out->write( |Bienvenido a { lv_pais }| ).
    when OTHERS.
    out->write( |No puede ingresar, Usted eligió ingresar a { lv_pais } Sólo está permitido ingresar a Chile - Venezuela y Brasil | ).
    ENDCASE.

  ENDMETHOD.
ENDCLASS.
