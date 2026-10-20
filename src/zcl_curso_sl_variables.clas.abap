CLASS zcl_curso_sl_variables DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_variables IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  TIPOS DE DATOS COMPLETOS
    DATA: var1  TYPE string,
          var1b TYPE string VALUE 'Valor de la Variable',
          var2  TYPE i,
          var3  TYPE d,
          var4  TYPE t.

*  TIPOS DE DATOS INCOMPLETOS
    DATA: var5 TYPE c LENGTH 5,
          var6 TYPE p LENGTH 3 DECIMALS 2,
          var7 TYPE n.

*TIPOS DE DATOS GLOBALES. DICCIONARIO ABAP.
    DATA airport TYPE /dmo/airport_id.


  ENDMETHOD.
ENDCLASS.
