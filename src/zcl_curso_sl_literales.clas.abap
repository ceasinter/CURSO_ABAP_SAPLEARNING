CLASS zcl_curso_sl_literales DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_literales IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*  Literales
*
*Los literales son objetos de datos anónimos con un valor de codificación fija. Los literales a menudo se utilizan para definir valores no iniciales para constantes y valores iniciales no iniciales para variables.
*
*Técnicamente, puede utilizar literales en cualquier lugar de su código. Para dar soporte a la legibilidad y mantenimiento, se recomienda definir y utilizar constantes.
*
*ABAP tiene tres tipos de literales:
*
*    Los literales numéricos son números enteros con o sin signos. Los literales numéricos suelen tener el tipo de datos I. Si el valor es demasiado grande para el tipo de datos I, se utiliza el tipo p con una longitud suficiente y sin decimales.
*    Los literales de texto son tipos de caracteres en un par de comillas simples ( ‘ ).
*    Los literales de string son del tipo STRING y están entre comillas invertidas ( ` ). Deben utilizarse para proporcionar valores para objetos de datos de tipo string.
  ENDMETHOD.
ENDCLASS.
