CLASS zcl_lab_09_account_fkol DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:

      set_iban
        IMPORTING
          iv_iban TYPE string,

      get_iban
        RETURNING
          value(rv_iban) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

   DATA iban TYPE string.

ENDCLASS.



CLASS zcl_lab_09_account_fkol IMPLEMENTATION.

  METHOD set_iban.

    me->iban = iv_iban.

  ENDMETHOD.

  METHOD get_iban.

    rv_iban = me->iban.

  ENDMETHOD.


ENDCLASS.
