CREATE OR REPLACE TABLE Deloitte.Deloitte_ClientList (
    ClientEntityId INT NOT NULL,
    ExternalAccountId NVARCHAR(255) NOT NULL,
    LabelAccountId NVARCHAR(25) NOT NULL,
    EffectiveFrom DATE NULL,
    EffectiveTo DATE NULL,
    AddedBy NVARCHAR(100) NOT NULL,
    _Added_DateTime TIMESTAMP_NTZ(3) NOT NULL,
    _Modified_DateTime TIMESTAMP_NTZ(3) NOT NULL,
    _UpdateCounter INT DEFAULT ((0)) NOT NULL,
    SysStartTime TIMESTAMP_NTZ(7) GENERATED ALWAYS AS ROW START HIDDEN !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'GeneratedClause' NODE ***/!!! NOT NULL,
    SysEndTime TIMESTAMP_NTZ(7) GENERATED ALWAYS AS ROW END HIDDEN !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'GeneratedClause' NODE ***/!!!   NOT NULL,
       CONSTRAINT PK_Deloitte_ClientList PRIMARY KEY (ClientEntityId, ExternalAccountId),
       PERIOD FOR SYSTEM_TIME ([SysStartTime], [SysEndTime]) !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'TablePeriodDefinition' NODE ***/!!!
   )
   WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[Deloitte].[Deloitte_ClientList_History], DATA_CONSISTENCY_CHECK=ON) !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'TableOptionSystemVersioning' NODE ***/!!!)
   COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 1,  "minor": 20,  "patch": "10.0" }, "attributes": {  "component": "transact",  "convertedOn": "11/11/2025",  "domain": "evelyn",  "migrationid": "tXGaAVYzjXO6zsbRGZv7Hg==" }}'
;
