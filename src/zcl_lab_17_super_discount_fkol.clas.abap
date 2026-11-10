CLASS zcl_lab_17_super_discount_fkol DEFINITION
  PUBLIC
  FINAL
  INHERITING FROM zcl_lab_15_flight_price_fkol
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS add_price REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_17_super_discount_fkol IMPLEMENTATION.

  METHOD add_price.
    DATA(ls_flight) = is_flight.
    ls_flight-price = ls_flight-price * '0.80'.

    super->add_price( ls_flight ).
  ENDMETHOD.

ENDCLASS.
