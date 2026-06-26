if (urlparams.draftId != undefined && urlparams.waOnly != undefined && urlparams.waOnly == true) {
  console.log("WA only");
  const id = urlparams.draftId;
  //if (localStorage.values.draftID != id) {
    await localStorage.clear();
  //}
  draftID.setValue(id);
  is_wa_only.setValue(true);
  is_loading.setValue(true);
  query_draft_details.trigger();
} else {
  console.log(localStorage.values.draft);
  draftID.setValue(draft.value.ProductDraftID != null ? draft.value.ProductDraftID : -1);
  await draft.setValue(localStorage.values.draft);
  if (localStorage.values.draft.ParentID != null) {
    query_check_parent.trigger();
  }
}
