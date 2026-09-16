CLASS zcl_lab_03_contract_fkol DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA cntr_type(2) TYPE c.

    METHODS set_creation_date
      IMPORTING
        iv_creation_date TYPE zdate.

  PROTECTED SECTION.

    DATA creation_date TYPE zdate.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_03_contract_fkol IMPLEMENTATION.

  METHOD set_creation_date.

    cntr_type = iv_creation_date.

  ENDMETHOD.

ENDCLASS.
