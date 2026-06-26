let d = draft.value;
// update from UI components

if (is_wa_only.value) {
  d.ProductCode = wa_item_code.value;
  d.Description = wa_product_name.value;  
  d.Brand = wa_manfuacturer.value;
  d.BrandDisplay = wa_manfuacturer.selectedLabel;
  d.X3YBrandCode = wa_manfuacturer.selectedItem != null && wa_manfuacturer.selectedItem.X3YBrandCode != null ? wa_manfuacturer.selectedItem.X3YBrandCode.toUpperCase() : null;
  d.Condition = condition.value;
  d.ConditionDisplay = condition.selectedLabel;
  d.MPN = wa_mpn.value;
  d.BarcodeX3 = wa_upc.value;
  d.PriceList = wa_list_price.value;
}

d.Priority = wa_priority.value;
d.ProductType = wa_product_type.value;
d.ProductSubType = wa_product_subtype.value;
d.ProductSubTypeDisplay = wa_product_subtype.selectedLabel;
//d.PriceList = wa_cost.value;
//d.Currency = wa_cost_currency.value;
d.ParentID = wa_parent_id.value;
d.ETA = wa_eta.value != "" ? wa_eta.value : null;
d.SoldOn = wa_sold_on.value;
d.SalesChannels = JSON.stringify(wa_sales_channels.value);
d.AVPrice = wa_av_price.value;
d.MSRP = wa_msrp.value;
d.SellingPrice = wa_selling_price.value;
d.IsCouponAllowed = wa_is_coupon_allowed.value;
d.SpecialOrderWeeks = wa_special_order.value;

await draft.setValue(d);
//console.log(draft.value);

//localStorage.clear();
// TODO: implement storing drafts as array and loading by uuid from url params

localStorage.setValue("draft", d);

//console.log(localStorage.values.draft);
if (draftID.value > 0) {
  await query_draft_update.trigger();
} else if (d.ProductCode.trim().length > 0) {
  await query_draft_create.trigger({ 
    onSuccess: function(data) {
      //console.log("data: ", data);
      d.ProductDraftID = data.product_draft_id[0];
      draft.setValue(d);
      localStorage.setValue("draft", d);
    },
    onFailure: function (error) {
      if (query_draft_create.error != null) {
        console.log("err: ", error);
        //console.log("message: ", JSON.parse(error));
      }
    }
  });
}