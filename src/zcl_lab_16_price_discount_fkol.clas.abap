CLASS zcl_lab_16_price_discount_fkol DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_15_flight_price_fkol
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS add_price REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_16_price_discount_fkol IMPLEMENTATION.

  METHOD add_price.
    " Los parámetros IMPORTING no se pueden modificar, por eso se copia
    DATA(ls_flight) = is_flight.
    ls_flight-price = ls_flight-price * '0.90'.

    super->add_price( ls_flight ).
  ENDMETHOD.

ENDCLASS.
