*&---------------------------------------------------------------------*
*& Include          ZZCO2COMP2_I01
*&---------------------------------------------------------------------*
MODULE user_command_0100 INPUT.
  IF SY-UCOMM = 'BACK'.
     LEAVE PROGRAM.
  ENDIF.
  IF SY-UCOMM = 'ADD'.
     CALL SCREEN 200.
  ENDIF.
ENDMODULE.
