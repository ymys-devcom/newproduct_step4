/*
SELECT mg.ModelGroupID as SubTypeID, mg.Description, mg.ManufacturerID, m.Name as ManufacturerName
FROM ModelGroups mg
LEFT JOIN Manufacturers m USING(ManufacturerID)
ORDER BY mg.RiflePistol, m.Name
*/

CALL frGetSubTypesModelsLookup()