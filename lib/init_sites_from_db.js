if (query_draft_sites.data != null && query_draft_sites.data.Site.length > 0) {
  let data = query_draft_sites.data;
  let sites = [];
  
  for(var i in data.Site){
    // console.log(data.Site)
    sites.push({
      site_code :data.Site[i],
      product_code: query_draft_details.data.ProductCode[0],
      buyer: data.Buyer[i],
      abc_class: data.ABCClass[i],
      suggestion_type: data.SuggestionType[i],
      eoq: data.EOQ[i],
      max_stock: data.MaximumStock[i],
      safety_stock: data.SafetyStock[i],
      reorder_threshold: data.ReorderThreshold[i],
      reorder_mode: data.ReorderMode[i],
      default_location: data.DefaultLocationDescription1[i],
      default_location_code: data.DefaultLocationType1[i],
      default_location2: data.DefaultLocationDescription2[i],
      default_location_code2: data.DefaultLocationType2[i],
      default_location3: data.DefaultLocationDescription3[i],
      default_location_code3: data.DefaultLocationType3[i]
    });
  }

  //await draft_sites.setValue(sites);
  //current_site_index.setValue(0);

  // set Sites
  let d = draft.value;
  d.Sites = sites; 
  await draft.setValue(d);
  
  localStorage.setValue("draft", draft.value);
  
//  } else {
//      await draft_sites.setValue([]);
//      current_site_index.setValue(-1);
}

