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
    out->write( '// Ejercicio 1' ).
    out->write( 'Hola mundo' ).


*   // Ejercicio 4

    DATA(lo_person) = NEW zcl_lab_04_person_fkol( ).

    lo_person->set_atributo( iv_age = '39' ).

    lo_person->get_atributo( IMPORTING ev_age = DATA(lv_age) ).

    out->write( '// Ejercicio 4' ).
    out->write( lv_age ).

*    La publica es accesible dentro y fuera de la clase.
*    La protegida es accesible dentro de la clase y de sus sub clases.
*    La privada es accesible solo dentro de la clase.



*   // Ejercicio 5
    DATA(lo_check_flight_exist) = NEW zcl_lab_05_flight_fkol( ).

    DATA(lv_exists) = lo_check_flight_exist->check_flight_exists(
                      iv_carrier_id    = 'LH'
                      iv_connection_id = 0400 ).

    out->write( '// Ejercicio 5' ).
    out->write( lv_exists ).


* //Ejercicio 6
    DATA(lo_object) = NEW zcl_lab_06_elements_fkol( ).

    lo_object->set_object( iv_class     = 'ZCL_LAB_06_ELEMENTS_FKOL'
                           iv_instance  = 'LO_OBJECT'
                           iv_reference = 'MS_OBJECT' ).

    out->write( lo_object->ms_object ).

* // Constantes de Clases
    out->write( '// Ejercicio 6' ).
    out->write( zcl_lab_06_elements_fkol=>c_1 ).
    out->write( zcl_lab_06_elements_fkol=>c_2 ).
    out->write( zcl_lab_06_elements_fkol=>c_3 ).
    out->write( zcl_lab_06_elements_fkol=>c_4 ).



*  //Ejercicio 7
    DATA(lo_student) = NEW zcl_lab_07_student_fkol( ).

    lo_student->set_birth_date( iv_birth_date = '19870117' ).


*    ¿Es posible modificar el valor del atributo
*    utilizando la referencia, el separador para los componentes de instancia y
*    el nombre del atributo?
*    zcl_lab_07_student_fkol=>birth_date = '19870117'.
*    No es posible, da error y no activa


*  //Ejercicio 8
    out->write( '// Ejercicio 8' ).

    zcl_lab_08_work_record=>open_new_record(
      iv_date       = '20000916'
      iv_first_name = 'Juan'
      iv_last_name  = 'Manuel'
      iv_surname    = 'Gomez' ).

    "Invocación SIN  IV_SURNAME
    zcl_lab_08_work_record=>open_new_record(
      iv_date       = '19860215'
      iv_first_name = 'Ana'
      iv_last_name  = 'García' ).


* // Ejercicio 9
    DATA(lo_account) = NEW zcl_lab_09_account_fkol( ).

    lo_account->set_iban( iv_iban = '1234567980' ).

    out->write( '// Ejercicio 9' ).
    out->write( lo_account->get_iban(  ) ).

  ENDMETHOD.

ENDCLASS.
