-- Step 1: Drop Existing Tables (drop Fact Table first due to FK constraints)
DROP TABLE FactPlaneAccidents;
DROP TABLE DimSummary;
DROP TABLE DimOperator;
DROP TABLE DimLocation;
DROP TABLE DimAircraft;
DROP TABLE DimDate;

-- Step 2: Create Dimension Tables
-- DimDate
CREATE TABLE DimDate (
    DateKey INT IDENTITY(1,1) PRIMARY KEY,
    FullDate DATE NOT NULL,
    Year INT NOT NULL,
    Month INT NOT NULL,
    Day INT NOT NULL
);

-- DimAircraft
CREATE TABLE DimAircraft (
    AircraftKey INT IDENTITY(1,1) PRIMARY KEY,
    AC_Type NVARCHAR(100) NOT NULL,
    Registration NVARCHAR(100) NOT NULL,
    Construction_no_line_no NVARCHAR(100) NOT NULL
);

-- DimLocation
CREATE TABLE DimLocation (
    LocationKey INT IDENTITY(1,1) PRIMARY KEY,
    LocationName NVARCHAR(100) NOT NULL
);

-- DimOperator
CREATE TABLE DimOperator (
    OperatorKey INT IDENTITY(1,1) PRIMARY KEY,
    OperatorName NVARCHAR(100) NOT NULL
);

-- DimSummary
CREATE TABLE DimSummary (
    SummaryKey INT IDENTITY(1,1) PRIMARY KEY,
    Summary NVARCHAR(MAX) NOT NULL
);

-- Step 3: Create Fact Table
CREATE TABLE FactPlaneAccidents (
    FactID INT IDENTITY(1,1) PRIMARY KEY,
    DateKey INT NOT NULL,
    AircraftKey INT NOT NULL,
    LocationKey INT NOT NULL,
    OperatorKey INT NOT NULL,
    SummaryKey INT NOT NULL,
    Aboard INT NOT NULL,
    Fatalities INT NOT NULL,
    FOREIGN KEY (DateKey) REFERENCES DimDate(DateKey),
    FOREIGN KEY (AircraftKey) REFERENCES DimAircraft(AircraftKey),
    FOREIGN KEY (LocationKey) REFERENCES DimLocation(LocationKey),
    FOREIGN KEY (OperatorKey) REFERENCES DimOperator(OperatorKey),
    FOREIGN KEY (SummaryKey) REFERENCES DimSummary(SummaryKey)
);