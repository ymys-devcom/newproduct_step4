/*
SELECT cast(FeatureValue as int) as SubTypeID, Description
FROM Features WHERE FeatureName='PelletType'
ORDER BY Description
*/
CALL frGetSubTypesAmmoLookup()