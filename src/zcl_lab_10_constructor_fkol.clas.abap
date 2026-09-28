CLASS zcl_lab_10_constructor_fkol DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA log TYPE string.

    CLASS-METHODS class_constructor.
    METHODS constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_10_constructor_fkol IMPLEMENTATION.

  METHOD class_constructor.
    log = log && 'Constructor estático-->'.
  ENDMETHOD.

  METHOD constructor.
    log = log && ' Constructor instancia-->'.
  ENDMETHOD.




ENDCLASS.
