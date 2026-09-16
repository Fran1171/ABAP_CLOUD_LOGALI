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

  ENDMETHOD.

ENDCLASS.
