CLASS zcl_lab_06_elements_fkol DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CONSTANTS: c_1 TYPE string VALUE '1',
               c_2 TYPE string VALUE '2',
               c_3 TYPE string VALUE '3',
               c_4 TYPE string VALUE '4'.


    TYPES: BEGIN OF  ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    DATA ms_object TYPE ty_elem_objects.

    METHODS set_object
      IMPORTING
        iv_class     TYPE string
        iv_instance  TYPE string
        iv_reference TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_06_elements_fkol IMPLEMENTATION.

  METHOD set_object.
    ms_object-class     = iv_class.
    ms_object-instance  = iv_instance.
    ms_object-reference = iv_reference.
  ENDMETHOD.

ENDCLASS.
