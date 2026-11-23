CLASS zcl_lab_20_person_fkol DEFINITION
  PUBLIC
  CREATE PUBLIC.                      " sin FINAL: ya se puede heredar

  PUBLIC SECTION.
    METHODS set_name FINAL            " no se puede redefinir en las hijas
      IMPORTING iv_name TYPE string.

    METHODS get_name
      RETURNING VALUE(rv_name) TYPE string.

  PROTECTED SECTION.
    DATA name TYPE string.

ENDCLASS.

CLASS zcl_lab_20_person_fkol IMPLEMENTATION.

  METHOD set_name.
    me->name = iv_name.
  ENDMETHOD.

  METHOD get_name.
    rv_name = me->name.
  ENDMETHOD.

ENDCLASS.
