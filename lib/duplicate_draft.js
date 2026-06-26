// Properties you want to retain:
const retainKeys = ["WAOnly", "Category", "Brand", "X3YBrandCode", "Buyer", "ProductType", "ProductSubType", "ParentID", "CasePackUOM", ];

// Build new object:
const d = Object.keys(draft.value).reduce((product, key) => {
  product[key] = retainKeys.includes(key) ? draft.value[key] : null;
  return product;
}, {});

d.DistributionZone = "P";
d.Condition = "NEW";
d.Currency = "USD";
d.IsHazmat = "1";
d.WeightUOM = "LB";

/*
//let d = {}; //draft.value;
// update from UI components
d.WAOnly = draft.value.WAOnly;
d.Category = draft.value.Category;
//d.CategoryDisplay = category.selectedLabel;
//d.ExternalCategoryID = category.selectedItem != null ? category.selectedItem.ExternalCategoryID : null;
d.Brand = draft.value.Brand;
//d.BrandDisplay = brand.selectedLabel;
d.X3YBrandCode = draft.value.X3YBrandCode;
d.SupplierNumber = draft.value.SupplierNumber;
//d.SupplierNumberDisplay = supplier_no.selectedLabel;
d.SupplierCasePackQuantity = draft.value.SupplierCasePackQuantity;
d.Buyer = draft.value.Buyer;
d.CountryOfOrigin = draft.value.CountryOfOrigin;
d.HTC = draft.value.HTC;
d.InsuranceLiabilityCode = draft.value.InsuranceLiabilityCode;
d.IsImported = draft.value.IsImported;
d.CustomsDutyRate = draft.value.CustomsDutyRate;
d.FreightPercent = draft.value.FreightPercent;
d.LandedCost = draft.value.LandedCost;
d.ProductType = draft.value.ProductType;
d.ProductSubType = draft.value.ProductSubType;
d.ParentID = draft.value.ParentID;

//await init_sites_from_db.trigger();
var sites = draft.value.Sites;
sites.forEach((s) => {s.buyer = null});
console.log(sites);

d.Sites = sites;
*/
d.State = "Draft";

draft.setValue(d);
console.log(d);
draftID.setValue(-1);

//draft.setValue(query_draft_details.data); // JSON.stringify());
//localStorage.clear();
// TODO: implement storing drafts as array and loading by uuid from url params

await localStorage.setValue("draft", d);
await localStorage.setValue("draftID", -1);
localStorage.setValue("isValidStep1", undefined);
localStorage.setValue("isValidStep2", undefined);
localStorage.setValue("isValidStep3", undefined);
localStorage.setValue("isValidStep4", undefined);

utils.showNotification({title: "Product has been duplicated into a New Draft", notificationType: "success"});

wa_item_code.clearValue();