CLASS ltcl_fizzbuzz_mk DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      "Wenn 1 eingegeben, dann Return ( 1 , 1 )
      input_1_output_1 FOR TESTING,
      "Wenn 2 eingegeben, dann Return ( 1 , 1 ) ( 2 , 2 )
      input_2_output_2 FOR TESTING,
      "Wenn 3 eingegeben, dann Return ( 1 , 1 ) ( 2 , 2 ) ( 3 , FIZZ )
      input_3_output_FIZZ FOR TESTING,
      "Wenn 4 eingegeben, dann Return ( 1 , 1 ) ( 2 , 2 ) ( 3 , FIZZ ) ( 4 , 4 )
      input_4_output_4 FOR TESTING.
ENDCLASS.


CLASS ltcl_fizzbuzz_mk IMPLEMENTATION.

  METHOD input_1_output_1.
    DATA lo_cut TYPE REF TO zclass_gr1.

    lo_cut = NEW zclass_gr1(  ).
    cl_abap_unit_assert=>assert_equals( msg = 'Bei Eingabe 1 soll ( 1 , 1 ) ausgegeben werden'
                                        exp = VALUE z007_fizzbuzz( ( z_input = 1 z_output = '1' ) )
                                        act = lo_cut->convert( 1 ) ).

  ENDMETHOD.

  METHOD input_2_output_2.
    DATA lo_cut TYPE REF TO zclass_gr1.
    lo_cut = NEW zclass_gr1(  ).
    cl_abap_unit_assert=>assert_equals( msg = 'Bei Eingabe 2 soll ( 1 , 1 ) ausgegeben werden'
                                        exp = VALUE z007_fizzbuzz( ( z_input = 1 z_output = '1' )
                                                                   ( z_input = 2 z_output = '2' ) )
                                        act = lo_cut->convert( 2 ) ).
  ENDMETHOD.

  METHOD input_3_output_fizz.
    DATA lo_cut TYPE REF TO zclass_gr1.
    lo_cut = NEW zclass_gr1(  ).
    cl_abap_unit_assert=>assert_equals( msg = 'Bei Eingabe 3 soll ( 3 , FIZZ ) ausgegeben werden'
                                        exp = VALUE z007_fizzbuzz( ( z_input = 1 z_output = '1' )
                                                                   ( z_input = 2 z_output = '2' )
                                                                   ( z_input = 3 z_output = 'FIZZ' ) )
                                        act = lo_cut->convert( 3 ) ).

  ENDMETHOD.

  METHOD input_4_output_4.
    DATA lo_cut TYPE REF TO zclass_gr1.
    lo_cut = NEW zclass_gr1(  ).
    cl_abap_unit_assert=>assert_equals( msg = 'Bei Eingabe 4 soll ( 4 , 4 ) ausgegeben werden'
                                        exp = VALUE z007_fizzbuzz( ( z_input = 1 z_output = '1' )
                                                                   ( z_input = 2 z_output = '2' )
                                                                   ( z_input = 3 z_output = 'FIZZ' )
                                                                   ( z_input = 4 z_output = '4') )
                                        act = lo_cut->convert( 4 ) ).

  ENDMETHOD.

ENDCLASS.
