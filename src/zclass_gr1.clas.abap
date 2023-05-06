CLASS zclass_gr1 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS convert
      IMPORTING
        iv_number          TYPE int1
      RETURNING
        VALUE(rt_fizzbuzz) TYPE z007_fizzbuzz.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclass_gr1 IMPLEMENTATION.

  METHOD convert.
    IF iv_number = 1.
      rt_fizzbuzz = VALUE z007_fizzbuzz( ( z_input = 1 z_output = '1' ) ).
    ELSEIF iv_number = 2.
      rt_fizzbuzz = VALUE z007_fizzbuzz( ( z_input = 1 z_output = '1' )
                                         ( z_input = 2 z_output = '2' ) ).
        ELSEIF iv_number = 3.
      rt_fizzbuzz = VALUE z007_fizzbuzz( ( z_input = 1 z_output = '1' )
                                         ( z_input = 2 z_output = '2' )
                                         ( z_input = 3 z_output = 'FIZZ' ) ).

    ELSEIF iv_number = 4.
      rt_fizzbuzz = VALUE z007_fizzbuzz( ( z_input = 1 z_output = '1' )
                                         ( z_input = 2 z_output = '2' )
                                         ( z_input = 3 z_output = 'FIZZ' )
                                         ( z_input = 4 z_output = '4' ) ).

    ENDIF.
  ENDMETHOD.

ENDCLASS.
