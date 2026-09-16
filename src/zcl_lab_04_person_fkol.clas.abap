CLASS zcl_lab_04_person_fkol DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS set_atributo
      IMPORTING
        iv_age TYPE i.

    METHODS get_atributo
      EXPORTING
        ev_age TYPE i.

  PROTECTED SECTION.

  PRIVATE SECTION.
    DATA age TYPE i.

ENDCLASS.



CLASS zcl_lab_04_person_fkol IMPLEMENTATION.

  METHOD set_atributo.
    age = iv_age.

  ENDMETHOD.

  METHOD get_atributo.
    ev_age = age.

  ENDMETHOD.


ENDCLASS.
