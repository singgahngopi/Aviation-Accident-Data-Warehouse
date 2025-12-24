WITH CombinedData AS 
(
    SELECT CAST([Date] AS NVARCHAR(100)) AS [Date],
           CAST([Time] AS NVARCHAR(100)) AS [Time],
           CAST([Location] AS NVARCHAR(100)) AS [Location],
           CAST([Operator] AS NVARCHAR(100)) AS [Operator],
           CAST([Flight] AS NVARCHAR(100)) AS [Flight],
           CAST([Route] AS NVARCHAR(100)) AS [Route],
           CAST([AC_Type] AS NVARCHAR(100)) AS [AC_Type],
           CAST([Registration] AS NVARCHAR(100)) AS [Registration],
           CAST([Construction_no_line_no] AS NVARCHAR(100)) AS [Construction_no_line_no],
           CAST([Aboard] AS NVARCHAR(100)) AS [Aboard],
           CAST([Fatalities] AS NVARCHAR(100)) AS [Fatalities],
           CAST([Ground] AS NVARCHAR(100)) AS [Ground],
           CAST([Summary] AS NVARCHAR(300)) AS [Summary]
    FROM [PlaneAccidentDB].[dbo].[2021 Plane Accident]

    UNION ALL

    SELECT CAST([Date] AS NVARCHAR(100)) AS [Date],
           CAST([Time] AS NVARCHAR(100)) AS [Time],
           CAST([Location] AS NVARCHAR(100)) AS [Location],
           CAST([Operator] AS NVARCHAR(100)) AS [Operator],
           CAST([Flight] AS NVARCHAR(100)) AS [Flight],
           CAST([Route] AS NVARCHAR(100)) AS [Route],
           CAST([AC_Type] AS NVARCHAR(100)) AS [AC_Type],
           CAST([Registration] AS NVARCHAR(100)) AS [Registration],
           CAST([Construction_no_line_no] AS NVARCHAR(100)) AS [Construction_no_line_no],
           CAST([Aboard] AS NVARCHAR(100)) AS [Aboard],
           CAST([Fatalities] AS NVARCHAR(100)) AS [Fatalities],
           CAST([Ground] AS NVARCHAR(100)) AS [Ground],
           CAST([Summary] AS NVARCHAR(300)) AS [Summary]
    FROM [PlaneAccidentDB].[dbo].[2022 Plane Accident]

    UNION ALL

    SELECT CAST([Date] AS NVARCHAR(100)) AS [Date],
           CAST([Time] AS NVARCHAR(100)) AS [Time],
           CAST([Location] AS NVARCHAR(100)) AS [Location],
           CAST([Operator] AS NVARCHAR(100)) AS [Operator],
           CAST([Flight] AS NVARCHAR(100)) AS [Flight],
           CAST([Route] AS NVARCHAR(100)) AS [Route],
           CAST([AC_Type] AS NVARCHAR(100)) AS [AC_Type],
           CAST([Registration] AS NVARCHAR(100)) AS [Registration],
           CAST([Construction_no_line_no] AS NVARCHAR(100)) AS [Construction_no_line_no],
           CAST([Aboard] AS NVARCHAR(100)) AS [Aboard],
           CAST([Fatalities] AS NVARCHAR(100)) AS [Fatalities],
           CAST([Ground] AS NVARCHAR(100)) AS [Ground],
           CAST([Summary] AS NVARCHAR(300)) AS [Summary]
    FROM [PlaneAccidentDB].[dbo].[2023 Plane Accident]
)
SELECT 'Date' AS ColumnName, [Date] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [Date]

UNION ALL

SELECT 'Time' AS ColumnName, [Time] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [Time]

UNION ALL

SELECT 'Location' AS ColumnName, [Location] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [Location]

UNION ALL

SELECT 'Operator' AS ColumnName, [Operator] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [Operator]

UNION ALL

SELECT 'Flight' AS ColumnName, [Flight] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [Flight]

UNION ALL

SELECT 'Route' AS ColumnName, [Route] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [Route]

UNION ALL

SELECT 'AC_Type' AS ColumnName, [AC_Type] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [AC_Type]

UNION ALL

SELECT 'Registration' AS ColumnName, [Registration] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [Registration]

UNION ALL

SELECT 'Construction_no_line_no' AS ColumnName, [Construction_no_line_no] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [Construction_no_line_no]

UNION ALL

SELECT 'Aboard' AS ColumnName, [Aboard] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [Aboard]

UNION ALL

SELECT 'Fatalities' AS ColumnName, [Fatalities] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [Fatalities]

UNION ALL

SELECT 'Ground' AS ColumnName, [Ground] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [Ground]

UNION ALL

SELECT 'Summary' AS ColumnName, [Summary] AS Value, COUNT(*) AS Occurrences
FROM CombinedData
GROUP BY [Summary];
