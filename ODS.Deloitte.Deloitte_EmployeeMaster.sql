CREATE OR REPLACE TABLE ODS.Deloitte.Deloitte_EmployeeMaster (
    EmployeeId NVARCHAR(50) NOT NULL,
    EmployeeName NVARCHAR(255) NOT NULL,
    Department NVARCHAR(100) NULL,
    Email NVARCHAR(255) NULL,
    Phone NVARCHAR(50) NULL,
    JoiningDate DATE NULL,
    IsActive BOOLEAN DEFAULT TRUE NOT NULL,
    AddedBy NVARCHAR(100) NOT NULL,
    _Added_DateTime TIMESTAMP_NTZ(3) NOT NULL,
    _Modified_DateTime TIMESTAMP_NTZ(3) NOT NULL,
    _UpdateCounter INT DEFAULT ((0)) NOT NULL,
    SysStartTime TIMESTAMP_NTZ(7) GENERATED ALWAYS AS ROW START HIDDEN !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'GeneratedClause' NODE ***/!!! NOT NULL,
    SysEndTime TIMESTAMP_NTZ(7) GENERATED ALWAYS AS ROW END HIDDEN !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'GeneratedClause' NODE ***/!!! NOT NULL,
       CONSTRAINT PK_Deloitte_EmployeeMaster PRIMARY KEY (EmployeeId),
       PERIOD FOR SYSTEM_TIME ([SysStartTime], [SysEndTime]) !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'TablePeriodDefinition' NODE ***/!!!
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[Deloitte].[Deloitte_EmployeeMaster_History], DATA_CONSISTENCY_CHECK=ON) !!!RESOLVE EWI!!! /*** SSC-EWI-0073 - PENDING FUNCTIONAL EQUIVALENCE REVIEW FOR 'TableOptionSystemVersioning' NODE ***/!!!)
COMMENT = '{ "origin": "sf_sc", "name": "snowconvert", "version": { "major": 1, "minor": 20, "patch": "10.0" }, "attributes": { "component": "transact", "convertedOn": "11/11/2025", "domain": "evelyn", "migrationid": "hB2qYJmKAZ9ToXpV6m3ufg==" }}'
;
