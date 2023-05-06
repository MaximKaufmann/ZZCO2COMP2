*&---------------------------------------------------------------------*
*& Report ZZCO2COMP2_PROG
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*

INCLUDE ZZCO2COMP2_TOP                          .    " Global Data

INCLUDE ZZCO2COMP2_O01                          .  " PBO-Modules
INCLUDE ZZCO2COMP2_I01                          .  " PAI-Modules
INCLUDE ZZCO2COMP2_F01                          .  " FORM-Routines

TABLES: ZZCO2COMP2.

DATA: lo_alv TYPE REF TO if_salv_gui_table_ida.
DATA: lo_cc TYPE REF TO cl_gui_custom_container.

LOAD-OF-PROGRAM.
  lo_cc = NEW cl_gui_custom_container( container_name = 'CCONTAINER_SALV').
  lo_alv = cl_salv_gui_table_ida=>create(
    iv_table_name = 'ZZCO2COMP2'
    io_gui_container = lo_cc
  ).

  START-OF-SELECTION.
  CALL SCREEN 100.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0200  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0200 INPUT.
  IF SY-UCOMM = 'BACK'.
     CALL SCREEN 100.
  ENDIF.

  IF SY-UCOMM = 'SAVE'.
     INSERT ZZCO2COMP2.
     IF sy-subrc <> 0.
        "CALL FUNCTION 'POPUP_TO_CONFIRM'
        "  EXPORTING
        "    TITLEBAR                    = 'Fehler'
        "    TEXT_QUESTION               = 'Der Eintrag konnte nicht angelegt werden.'
        "    display_cancel_button       = ''
        "    .
        MESSAGE 'Der Eintrag konnte nicht angelegt werden.' TYPE 'W'.
     ELSE.
        MESSAGE 'Der Eintrag wurde angelegt.' TYPE 'S'.
     ENDIF.
  ENDIF.
ENDMODULE.
