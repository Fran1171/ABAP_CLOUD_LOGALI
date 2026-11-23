CLASS zcl_lab_21_classroom_fkol DEFINITION
  PUBLIC
  CREATE PROTECTED.                   " solo la clase y sus hijas pueden instanciarla

  PUBLIC SECTION.
    METHODS get_description
      RETURNING VALUE(rv_text) TYPE string.

ENDCLASS.

CLASS zcl_lab_21_classroom_fkol IMPLEMENTATION.

  METHOD get_description.
    rv_text = 'Classroom instance created'.
  ENDMETHOD.

ENDCLASS.
