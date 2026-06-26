/*
SELECT AccessoryGroupID as SubTypeID, Name as Description, ShowAccessoryGroup
FROM AccessoryGroups
ORDER BY Name
*/
CALL frGetSubTypesAccessoryLookup()