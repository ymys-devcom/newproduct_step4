/*
SELECT m.ManufacturerID, m.Name, m.ShortBrandName, m.ShowManufacturer, m.ParentManufacturerID
FROM Manufacturers m
-- Where ShowManufacturer = 1
ORDER BY m.Name
*/
CALL frGetManufacturersLookup()