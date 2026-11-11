CLASS zcl_lab_18_animal_fkol DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS walk
      RETURNING VALUE(rv_walk) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_18_animal_fkol IMPLEMENTATION.

  METHOD walk.
    rv_walk = 'The animal walks'.
  ENDMETHOD.

ENDCLASS.
