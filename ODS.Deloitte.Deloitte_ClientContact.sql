CREATE OR REPLACE TABLE ODS.Deloitte.Deloitte_ClientContact (
    ContactId INT NOT NULL,
    ClientEntityId INT NOT NULL,
    ExternalAccountId NVARCHAR(255) NOT NULL,
    ContactName NVARCHAR(200) NOT NULL,
    ContactEmail NVARCHAR(255) NULL,
    ContactPhone NVARCHAR(50) NULL,
    IsPrimaryContact BOOLEAN DEFAULT FALSE NOT NULL,
    EffectiveFrom DATE NULL,
    EffectiveTo DATE NULL,
    AddedBy NVARCHAR(100) NOT NULL,
    _Added_DateTime TIMESTAMP_NTZ(3) NOT NULL,
    _Modified_DateTime TIMESTAMP_NTZ(3) NOT NULL,
    _UpdateCounter INT DEFAULT ((0)) NOT NULL,
    SysStartTime TIMESTAMP_NTZ(7) GENERATED ALWAYS AS ROW START HIDDEN !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'GeneratedClause' NODE ***/!!! NOT NULL,
    SysEndTime TIMESTAMP_NTZ(7) GENERATED ALWAYS AS ROW END HIDDEN !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'GeneratedClause' NODE ***/!!! NOT NULL,
       CONSTRAINT PK_Deloitte_ClientContact PRIMARY KEY (ContactId),
       CONSTRAINT FK_Deloitte_ClientContact_ClientList FOREIGN KEY (ClientEntityId, ExternalAccountId)
           REFERENCES Deloitte.Deloitte_ClientList (ClientEntityId, ExternalAccountId),
       PERIOD FOR SYSTEM_TIME ([SysStartTime], [SysEndTime]) !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'TablePeriodDefinition' NODE ***/!!!
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[Deloitte].[Deloitte_ClientContact_History], DATA_CONSISTENCY_CHECK=ON) !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'TableOptionSystemVersioning' NODE ***/!!!)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": {  "major": 1,  "minor": 20,  "patch": "10.0" }, "attributes": {  "component": "transact",  "convertedOn": "11/11/2025",  "domain": "evelyn",  "migrationid": "FkP7vG6yHJq4yXvS9j3cWw==" }}'
;
