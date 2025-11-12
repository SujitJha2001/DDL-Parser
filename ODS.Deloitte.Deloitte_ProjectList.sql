CREATE OR REPLACE TABLE Deloitte.Deloitte_ProjectList (
    ProjectId INT NOT NULL,
    ProjectCode NVARCHAR(50) NOT NULL,
    ProjectName NVARCHAR(255) NOT NULL,
    ClientEntityId INT NULL,
    StartDate DATE NULL,
    EndDate DATE NULL,
    ProjectStatus NVARCHAR(50) NULL,
    AddedBy NVARCHAR(100) NOT NULL,
    _Added_DateTime TIMESTAMP_NTZ(3) NOT NULL,
    _Modified_DateTime TIMESTAMP_NTZ(3) NOT NULL,
    _UpdateCounter INT DEFAULT ((0)) NOT NULL,
    SysStartTime TIMESTAMP_NTZ(7) GENERATED ALWAYS AS ROW START HIDDEN !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'GeneratedClause' NODE ***/!!! NOT NULL,
    SysEndTime TIMESTAMP_NTZ(7) GENERATED ALWAYS AS ROW END HIDDEN !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'GeneratedClause' NODE ***/!!! NOT NULL,
       CONSTRAINT PK_Deloitte_ProjectList PRIMARY KEY (ProjectId),
       PERIOD FOR SYSTEM_TIME ([SysStartTime], [SysEndTime]) !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'TablePeriodDefinition' NODE ***/!!!
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[Deloitte].[Deloitte_ProjectList_History], DATA_CONSISTENCY_CHECK=ON) !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'TableOptionSystemVersioning' NODE ***/!!!)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": { "major": 1, "minor": 20, "patch": "10.0" }, "attributes": { "component": "transact", "convertedOn": "11/11/2025", "domain": "evelyn", "migrationid": "yJkLMb4Wn1HZPsq92Pq9ZA==" }}'
;
