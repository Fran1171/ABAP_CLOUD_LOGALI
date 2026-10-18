CLASS zcl_lab_11_system_fkol DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA architecture TYPE string VALUE '64 bits'.

    METHODS get_architecture
      EXPORTING ev_ARCHITECTURE TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_11_system_fkol IMPLEMENTATION.
  METHOD get_architecture.

    ev_architecture = architecture.

  ENDMETHOD.

ENDCLASS.
