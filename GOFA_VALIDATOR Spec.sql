--------------------------------------------------------
--  File created - mardi-août-23-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package BOFA_VALIDATOR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BOFA_VALIDATOR AS
    ERROR_CODE VARCHAR2 (50);
    FUNCTION VERIF_DDM_DAE (
        DDM_1 IN VARCHAR2
      , DDM_2 IN VARCHAR2
      , DDM_3 IN VARCHAR2
      , DAE_1 IN VARCHAR2
      , DAE_2 IN VARCHAR2
      , DAE_3 IN VARCHAR2
      , DAE_4 IN VARCHAR2
      , DAE_5 IN VARCHAR2
    ) RETURN INT;
    FUNCTION GET_ERROR_CODE RETURN VARCHAR2;
END BOFA_VALIDATOR;

/
