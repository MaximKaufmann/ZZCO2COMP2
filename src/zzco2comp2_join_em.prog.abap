*&---------------------------------------------------------------------*
*& Report ZZCO2COMP2_JOIN_EM
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZZCO2COMP2_JOIN_EM.

START-OF-SELECTION.


  DATA itab TYPE STANDARD TABLE OF zzco2comp2_strc.

  SELECT
   sbook~carrid,
   sflight~connid,
   sflight~fldate,
   zzco2comp2~price,
   zzco2comp2~curr,
   spfli~distance,
   spfli~distid,
   ZZCO2COMP2_3~co_ausstoss
   INTO TABLE @itab
  FROM
    sbook
      INNER JOIN sflight ON ( sbook~connid = sflight~connid AND sbook~fldate = sflight~fldate )
      INNER JOIN spfli ON ( spfli~connid = sflight~connid AND spfli~carrid = sflight~carrid )
      INNER JOIN zzco2comp2 ON ( sbook~connid = zzco2comp2~connid AND sbook~bookid = zzco2comp2~bookid )
      INNER JOIN ZZCO2COMP2_3 ON ( sflight~planetype = ZZCO2COMP2_3~planetype ).

  FIELD-SYMBOLS <ls_itab> LIKE LINE OF itab.

  LOOP AT itab ASSIGNING <ls_itab>.
    IF <ls_itab>-distid = 'MI'.
      <ls_itab>-co2result = <ls_itab>-co_ausstoss * <ls_itab>-distance * 162 / 100.
    ELSE.
      <ls_itab>-co2result = <ls_itab>-co_ausstoss * <ls_itab>-distance.
    ENDIF.
  ENDLOOP.
