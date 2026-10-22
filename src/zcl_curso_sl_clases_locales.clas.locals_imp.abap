CLASS lcl_connection DEFINITION.

  PUBLIC SECTION.


    DATA: carrier_id    TYPE /dmo/carrier_id,
          connection_id TYPE /dmo/connection_id.
    CLASS-DATA conn_counter TYPE i.

    METHODS set_connection
      IMPORTING i_carrier_id    TYPE /dmo/carrier_id OPTIONAL
                i_connection_id TYPE /dmo/connection_id.

    METHODS get_connection
      EXPORTING e_carrier_id    TYPE /dmo/carrier_id
                e_connection_id TYPE /dmo/connection_id.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS lcl_connection IMPLEMENTATION.
  METHOD set_connection.
    carrier_id = i_carrier_id.
    connection_id = i_connection_id.

  ENDMETHOD.

  METHOD get_connection.
    e_carrier_id = carrier_id.
    e_connection_id = connection_id.
  ENDMETHOD.
ENDCLASS.
