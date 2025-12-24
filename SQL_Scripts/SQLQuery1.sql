SELECT 'Date' AS ColumnName, CAST([Date] AS NVARCHAR(100)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [Date]

UNION ALL

SELECT 'Time' AS ColumnName, CAST([Time] AS NVARCHAR(100)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [Time]

UNION ALL

SELECT 'Location' AS ColumnName, CAST([Location] AS NVARCHAR(100)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [Location]

UNION ALL

SELECT 'Operator' AS ColumnName, CAST([Operator] AS NVARCHAR(100)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [Operator]

UNION ALL

SELECT 'Flight' AS ColumnName, CAST([Flight] AS NVARCHAR(100)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [Flight]

UNION ALL

SELECT 'Route' AS ColumnName, CAST([Route] AS NVARCHAR(100)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [Route]

UNION ALL

SELECT 'AC_Type' AS ColumnName, CAST([AC_Type] AS NVARCHAR(100)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [AC_Type]

UNION ALL

SELECT 'Registration' AS ColumnName, CAST([Registration] AS NVARCHAR(100)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [Registration]

UNION ALL

SELECT 'Construction_no_line_no' AS ColumnName, CAST([Construction_no_line_no] AS NVARCHAR(100)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [Construction_no_line_no]

UNION ALL

SELECT 'Aboard' AS ColumnName, CAST([Aboard] AS NVARCHAR(100)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [Aboard]

UNION ALL

SELECT 'Fatalities' AS ColumnName, CAST([Fatalities] AS NVARCHAR(100)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [Fatalities]

UNION ALL

SELECT 'Ground' AS ColumnName, CAST([Ground] AS NVARCHAR(100)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [Ground]
UNION ALL
SELECT 'Summary' AS ColumnName, CAST([Summary] AS NVARCHAR(300)) AS Value, COUNT(*) AS Occurrences
FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]
GROUP BY [Summary];

