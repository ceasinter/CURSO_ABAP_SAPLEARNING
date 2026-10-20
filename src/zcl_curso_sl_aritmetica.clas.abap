CLASS zcl_curso_sl_aritmetica DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_aritmetica IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: total    TYPE i,
          cant1    TYPE i,
          cant2    TYPE i,
          promedio TYPE i,
          importe1 TYPE i,
          importe2 TYPE i.

    DATA: var1 TYPE i VALUE 6,
          var2 TYPE i VALUE 2,
          var3 TYPE i,
          var4 TYPE i,
          var5 TYPE i.

*  Datos con variables usando información del sistema con la clase CL_ABAP_CONTEXT_INFO

    DATA(fecha) = cl_abap_context_info=>get_system_date(  ).
    DATA(hora) = cl_abap_context_info=>get_system_time(  ).
    DATA(usuario) = cl_abap_context_info=>get_user_technical_name(  ).

    cant1 = 12.
    cant2 = 13.
    total = cant1 + cant2.
    importe1 = 185.
    importe2 = 13.
    promedio = ( 2 * importe1 + 3 * importe2 ) / 5.

    var3 = var1.
    var4 = var1 + var2.
    var5 = var1 + var2.

    out->write( |Cant 1......: { cant1 } | ).
    out->write( |Cant 2......: { cant2 } | ).
    out->write( |Total.......: { total } | ).

    out->write( 'Promedio de Importes' ).
    out->write( |Importe 1...: { importe1 } | ).
    out->write( |Importe 2...: { importe2 } | ).
    out->write( |Promedio....: { promedio } | ).

    out->write( 'Variables sueltas' ).
    out->write( |Var1........: { var1 } | ).
    out->write( |Var2........: { var2 } | ).
    out->write( |Var3........: { var3 } | ).
    out->write( |Var4........: { var4 } | ).
    out->write( |Var5........: { var5 } | ).

    out->write( |Fecha.......: { fecha } | ).
    out->write( |Hora........: { hora } | ).
    out->write( |Usuario.....: { usuario } | ).
  ENDMETHOD.
ENDCLASS.
