CLASS zcl_curso_sl_basesdedatos DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_basesdedatos IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: airport_from_id TYPE /dmo/airport_from_id,
          airport_to_id   TYPE /dmo/airport_to_id,
          airports        TYPE TABLE OF /dmo/airport_from_id.

    SELECT SINGLE
    FROM /dmo/connection
    FIELDS airport_from_id
    WHERE carrier_id = 'LH'
    AND connection_id = '0400'
    INTO @airport_from_id.

    out->write( |------------------------------------------------\n| &
                |Flight LH 400 departs from { airport_from_id }\n| &
                |------------------------------------------------| ).


    SELECT SINGLE
    FROM /dmo/connection
    FIELDS airport_from_id
    WHERE carrier_id = 'XX'
    AND connection_id = '1234'
    INTO @airport_from_id.

    IF sy-subrc = 0.
      out->write( |------------------------------------------------\n| &
                  |Flight XX 1234 departs from { airport_from_id }\n| &
                  |------------------------------------------------| ).
    ELSE.
      out->write( |------------------------------------------------\n| &
                  |There is no Flight XX 1234\n| &
                  |but still airport_from_id...: { airport_from_id }\n| &
                  |------------------------------------------------| ).

    ENDIF.


  ENDMETHOD.
ENDCLASS.
