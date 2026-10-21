CLASS zcl_curso_sl_ti_simples DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_ti_simples IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    CONSTANTS lc_max_count TYPE i VALUE 10.
    DATA numeros TYPE TABLE OF i.
    DATA salida TYPE TABLE OF string.

    DO lc_max_count TIMES.
      CASE sy-index.
        WHEN 1.
          APPEND 0 TO numeros.
        WHEN 2.
          APPEND 1 TO numeros.
        WHEN OTHERS.
          APPEND numeros[ sy-index - 2 ]
               + numeros[ sy-index - 1 ]
               TO numeros.
      ENDCASE.
    ENDDO.

    DATA(contador) = 0.
    LOOP AT numeros INTO DATA(number).
      contador = contador + 1.
      APPEND |{ contador WIDTH = 4 ALIGN = LEFT }: { number WIDTH = 10 ALIGN = RIGHT }|
           TO salida.

    ENDLOOP.

    out->write( data = salida
                name = |Los primeros { lc_max_count } Números de Fibonacci| ).
  ENDMETHOD.
ENDCLASS.
