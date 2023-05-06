*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZZCO2COMP2_2....................................*
DATA:  BEGIN OF STATUS_ZZCO2COMP2_2                  .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZZCO2COMP2_2                  .
CONTROLS: TCTRL_ZZCO2COMP2_2
            TYPE TABLEVIEW USING SCREEN '0100'.
*.........table declarations:.................................*
TABLES: *ZZCO2COMP2_2                  .
TABLES: ZZCO2COMP2_2                   .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
