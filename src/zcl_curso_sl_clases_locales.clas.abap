CLASS zcl_curso_sl_clases_locales DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.


    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_curso_sl_clases_locales IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA connection TYPE REF TO lcl_connection.
    DATA connection2 TYPE REF TO lcl_connection.
    connection = NEW #(  ).
    connection->carrier_id = 'LH'.
    connection->connection_id = '0400'.
    connection->conn_counter = 1234.
    connection2 = connection.
    connection2->carrier_id = 'OP'.
    connection2->connection_id = '1355'.
    connection2->conn_counter = 6543.
  ENDMETHOD.
ENDCLASS.
