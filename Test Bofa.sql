SELECT BOFA_VALIDATOR.VERIF_DDM_DAE ('', '', '', '', ''
                                   , '', '', '') AS RETOUR
     , BOFA_VALIDATOR.GET_ERROR_CODE
FROM DUAL
UNION ALL
SELECT BOFA_VALIDATOR.VERIF_DDM_DAE ('111', '', '', '', ''
                                   , '', '', '')
     , BOFA_VALIDATOR.GET_ERROR_CODE
FROM DUAL
UNION ALL
SELECT BOFA_VALIDATOR.VERIF_DDM_DAE ('111', '222', '', '', ''
                                   , '', '', '')
     , BOFA_VALIDATOR.GET_ERROR_CODE
FROM DUAL
UNION ALL
SELECT BOFA_VALIDATOR.VERIF_DDM_DAE ('111', '', '', '444', ''
                                   , '', '', '')
     , BOFA_VALIDATOR.GET_ERROR_CODE
FROM DUAL
UNION ALL
SELECT BOFA_VALIDATOR.VERIF_DDM_DAE ('111', '222', '333', '', ''
                                   , '', '', '')
     , BOFA_VALIDATOR.GET_ERROR_CODE
FROM DUAL
UNION ALL
SELECT BOFA_VALIDATOR.VERIF_DDM_DAE ('', '', '', '444', '555'
                                   , '', '', '')
     , BOFA_VALIDATOR.GET_ERROR_CODE
FROM DUAL
UNION ALL
SELECT BOFA_VALIDATOR.VERIF_DDM_DAE ('', '', '', '444', '555'
                                   , '666', '777', '888')
     , BOFA_VALIDATOR.GET_ERROR_CODE
FROM DUAL;