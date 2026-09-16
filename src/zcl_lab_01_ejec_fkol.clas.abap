CLASS zcl_lab_01_ejec_fkol DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_fkol IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*    // Ejercicio 1
*    out->write( 'Hola mundo' ).


*   // Ejercicio 4
    DATA(lo_person) = NEW zcl_lab_04_person_fkol( ).

    lo_person->set_atributo( iv_age = '39' ).

    lo_person->get_atributo( IMPORTING ev_age = DATA(lv_age) ).

    out->write( lv_age ).

*   // Ejercicio 5
    DATA(lo_check_flight_exist) = NEW zcl_lab_05_flight_fkol( ).

    DATA(lv_exists) = lo_check_flight_exist->check_flight_exists(
                      iv_carrier_id    = 'LH'
                      iv_connection_id = 0400 ).

    out->write( lv_exists ).


* //Ejercicio 6
    DATA(lo_object) = NEW zcl_lab_06_elements_fkol( ).

    lo_object->set_object( iv_class     = 'ZCL_LAB_06_ELEMENTS_FKOL'
                           iv_instance  = 'LO_OBJECT'
                           iv_reference = 'MS_OBJECT' ).

    out->write( lo_object->ms_object ).

* // Constantes de Clases
    out->write( zcl_lab_06_elements_fkol=>c_1 ).
    out->write( zcl_lab_06_elements_fkol=>c_2 ).
    out->write( zcl_lab_06_elements_fkol=>c_3 ).
    out->write( zcl_lab_06_elements_fkol=>c_4 ).



*  //Ejercicio 7
    DATA(lo_student) = NEW zcl_lab_07_student_fkol( ).

    lo_student->set_birth_date( iv_birth_date = '19870117' ).


  ENDMETHOD.

ENDCLASS.
