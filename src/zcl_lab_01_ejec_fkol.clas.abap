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

    zcl_lab_08_work_record_fkol=>open_new_record(
      iv_date       = '20000916'
      iv_first_name = 'Juan'
      iv_last_name  = 'Manuel'
      iv_surname    = 'Gomez' ).

    "Invocación SIN  IV_SURNAME
    zcl_lab_08_work_record_fkol=>open_new_record(
      iv_date       = '19860215'
      iv_first_name = 'Ana'
      iv_last_name  = 'García' ).


* // Ejercicio 9
    DATA(lo_account) = NEW zcl_lab_09_account_fkol( ).

    lo_account->set_iban( iv_iban = '1234567980' ).

    out->write( '// Ejercicio 9' ).
    out->write( lo_account->get_iban(  ) ).

* // Ejercicio 10
    DATA(lo_constructor) = NEW zcl_lab_10_constructor_fkol( ).

    out->write( '// Ejercicio 10' ).
    out->write( |Orden de ejecución:| && | { zcl_lab_10_constructor_fkol=>log }| ).

* //Ejercico 11 y 12
    out->write( '// Ejercicio 11 y 12' ).
    DATA(lo_LINUX) = NEW zcl_lab_12_linux_fkol( ).

    " Llamada al método heredado de la clase superior
    lo_linux->get_architecture(
      IMPORTING
        ev_architecture = DATA(lv_architecture) ).

    out->write( |Arquitectura: { lv_architecture }| ).

* ¿Se puede llamar al método de la clase superior con la
* referencia del objeto de la clase hija?
* Si, se puede. Siempre y cuando no este en la sección privada


* //Ejercico 13 y 14
    out->write( '// Ejercicio 13 y 14' ).

DATA(lo_grid) = NEW zcl_lab_14_grid_fkol( iv_box = 'Box 1' ).

    IF lo_grid IS BOUND.
      out->write( |Objeto ZCL_LAB_14_GRID_FKOL instanciado OK| ).
    ENDIF.


* //Ejercico 15, 16, 17
    out->write( '// Ejercicio 15, 16 y 17' ).

    SELECT SINGLE * FROM /dmo/flight
      INTO @DATA(ls_flight).

    IF sy-subrc <> 0.
      out->write( 'No se encontraron registros en /DMO/FLIGHT' ).
      RETURN.
    ENDIF.

    DATA(lo_flight_price)   = NEW zcl_lab_15_flight_price_fkol( ).
    DATA(lo_price_discount) = NEW zcl_lab_16_price_discount_fkol( ).
    DATA(lo_super_discount) = NEW zcl_lab_17_super_discount_fkol( ).

    " 3. Llamar al método ADD_PRICE con el mismo registro
    lo_flight_price->add_price( ls_flight ).
    lo_price_discount->add_price( ls_flight ).
    lo_super_discount->add_price( ls_flight ).

    " 4. Mostrar los precios en la consola
    out->write( |Vuelo: { ls_flight-carrier_id } { ls_flight-connection_id } - Fecha: { ls_flight-flight_date DATE = USER }| ).
    out->write( |----------------------------------------------| ).

    out->write( |Precio habitual:          { lo_flight_price->mt_flights[ 1 ]-price } { ls_flight-currency_code }| ).
    out->write( |Precio con 10% descuento: { lo_price_discount->mt_flights[ 1 ]-price } { ls_flight-currency_code }| ).
    out->write( |Precio con 20% descuento: { lo_super_discount->mt_flights[ 1 ]-price } { ls_flight-currency_code }| ).

    out->write( '// Ejercicio 11 al 20' ).
    "--------------------------------------------------
    " 4. NARROWING CAST (Up Cast)
    "--------------------------------------------------
    DATA lo_animal TYPE REF TO zcl_lab_18_animal_fkol.

    DATA(lo_lion) = NEW zcl_lab_19_lion_fkol( ).

    " Se asigna una instancia de la hija a una referencia de la clase superior
    lo_animal = lo_lion.

    out->write( |Narrowing Cast: { lo_animal->walk( ) }| ).

    "--------------------------------------------------
    " 5. WIDENING CAST (Down Cast)
    "--------------------------------------------------
    DATA: lo_lion_1  TYPE REF TO zcl_lab_19_lion_fkol,
          lo_lion_2  TYPE REF TO zcl_lab_19_lion_fkol,
          lo_animal2 TYPE REF TO zcl_lab_18_animal_fkol.

    " Se instancia el objeto en la primera referencia LION
    lo_lion_1 = NEW #( ).

    " Se asigna a la referencia ANIMAL (narrowing implícito)
    lo_animal2 = lo_lion_1.

    TRY.
        " Widening Cast: de ANIMAL a la segunda referencia LION
        lo_lion_2 ?= lo_animal2.          " equivalente: lo_lion_2 = CAST #( lo_animal2 ).
        out->write( |Widening Cast: { lo_lion_2->walk( ) }| ).

      CATCH cx_sy_move_cast_error INTO DATA(lx_cast).
        out->write( |Error de cast: { lx_cast->get_text( ) }| ).
    ENDTRY.

    "--------------------------------------------------
    " Extra: caso que provoca la excepción
    "--------------------------------------------------
    TRY.
        lo_animal2 = NEW zcl_lab_18_animal_fkol( ).   " objeto que es solo ANIMAL
        lo_lion_2 ?= lo_animal2.                 " falla: un animal no es un león
        out->write( lo_lion_2->walk( ) ).

      CATCH cx_sy_move_cast_error INTO lx_cast.
        out->write( |Error de cast capturado: { lx_cast->get_text( ) }| ).
    ENDTRY.



  ENDMETHOD.

ENDCLASS.
