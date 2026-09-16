CLASS zcl_lab_05_flight_fkol DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS check_flight_exists
      IMPORTING
        iv_carrier_id    TYPE /dmo/carrier_id
        iv_connection_id TYPE /dmo/connection_id
      RETURNING
        VALUE(rv_exists) TYPE abap_bool.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_05_flight_fkol IMPLEMENTATION.

  METHOD check_flight_exists.

    SELECT COUNT( * )
      FROM /dmo/flight
      WHERE carrier_id    EQ @iv_carrier_id
        AND connection_id EQ @iv_connection_id.

    IF sy-dbcnt > 0.
      rv_exists = abap_true.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
