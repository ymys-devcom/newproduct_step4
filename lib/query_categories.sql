#select * from CategoryTreeExternalMap where ExternalProvider = 'Sage' order by ExternalCategoryID

CALL frGetSageCategoriesLookup()