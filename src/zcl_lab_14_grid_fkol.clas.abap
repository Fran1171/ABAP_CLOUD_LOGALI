CLASS zcl_lab_14_grid_fkol DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_13_view_fkol
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING iv_box TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_14_grid_fkol IMPLEMENTATION.

  METHOD constructor.

    super->constructor( iv_view_type = 'GRID' ).

    me->box = iv_box.
  ENDMETHOD.

ENDCLASS.
