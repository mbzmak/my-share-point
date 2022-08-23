--------------------------------------------------------
--  File created - mardi-août-23-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body BOFA_VALIDATOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY BOFA_VALIDATOR AS
    FUNCTION VERIF_DDM_DAE (
        DDM_1 IN VARCHAR2
      , DDM_2 IN VARCHAR2
      , DDM_3 IN VARCHAR2
      , DAE_1 IN VARCHAR2
      , DAE_2 IN VARCHAR2
      , DAE_3 IN VARCHAR2
      , DAE_4 IN VARCHAR2
      , DAE_5 IN VARCHAR2
    ) RETURN INT AS
        BLOC_DDM VARCHAR2 (512);
        BLOC_DAE VARCHAR2 (512);
    BEGIN
        BLOC_DDM := DDM_1 || DDM_2 || DDM_3;
        BLOC_DAE := DAE_1 || DAE_2 || DAE_3 || DAE_4 || DAE_5;
        IF
            BLOC_DDM IS NOT NULL AND BLOC_DAE IS NOT NULL
        THEN
            ERROR_CODE := 'ONLY_1_BLOC';
            RETURN 1;
        ELSIF
            BLOC_DDM IS NOT NULL AND (DDM_1 IS NULL OR DDM_2 IS NULL OR DDM_3 IS NULL)
        THEN
            ERROR_CODE := 'ALL_DDM';
            RETURN 1;
        ELSIF
            BLOC_DAE IS NOT NULL AND (DAE_1 IS NULL OR DAE_2 IS NULL OR DAE_3 IS NULL OR DAE_4 IS NULL OR DAE_5 IS NULL)
        THEN
            ERROR_CODE := 'ALL_DAE';
            RETURN 1;
        ELSIF
            BLOC_DAE IS NULL AND BLOC_DDM IS NULL
        THEN
            ERROR_CODE := 'NEED_1_BLOC';
            RETURN 1;
        END IF;
        ERROR_CODE := NULL;
        RETURN 0;
    END VERIF_DDM_DAE;
    FUNCTION GET_ERROR_CODE RETURN VARCHAR2 AS
    BEGIN
        RETURN ERROR_CODE;
    END GET_ERROR_CODE;
END BOFA_VALIDATOR;

/
