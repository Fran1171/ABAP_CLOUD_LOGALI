CLASS zcl_lab_22_student_fkol DEFINITION
  PUBLIC
  INHERITING FROM zcl_lab_21_classroom_fkol
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS assign_student
      RETURNING VALUE(rv_result) TYPE string.

ENDCLASS.

CLASS zcl_lab_22_student_fkol IMPLEMENTATION.

  METHOD assign_student.
    " Dentro del árbol jerárquico: sí se puede instanciar la clase superior
    DATA(lo_classroom) = NEW zcl_lab_21_classroom_fkol( ).
    rv_result = lo_classroom->get_description( ).
  ENDMETHOD.

ENDCLASS.
