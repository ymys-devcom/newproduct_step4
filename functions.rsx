<GlobalFunctions>
  <Folder id="Lookups">
    <SqlQueryUnified
      id="query_conditions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isImported={true}
      notificationDuration={4.5}
      playgroundQueryName="lookup_conditions_get"
      playgroundQueryUuid="556e6c8b-2788-4279-a4b7-499024907cb2"
      query={include("./lib/query_conditions.sql", "string")}
      resourceDisplayName="PYR_Database"
      resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
      retoolVersion="3.33.7"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      warningCodes={[]}
    />
  </Folder>
  <SqlQueryUnified
    id="query_suppliers"
    cacheKeyTtl="86400"
    enableCaching={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="lookup_suppliers_get"
    playgroundQueryUuid="1c755930-2ed5-49f1-b79a-b5539af352bf"
    query={include("./lib/query_suppliers.sql", "string")}
    resourceDisplayName="PYR_Database"
    resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query_categories"
    cacheKeyTtl="86400"
    enableCaching={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="lookup_categories_get"
    playgroundQueryUuid="7f079d51-bc65-4ac7-a389-82466e9d3a1b"
    query={include("./lib/query_categories.sql", "string")}
    resourceDisplayName="PYR_Database"
    resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
    retoolVersion="3.33.7"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
  />
  <State
    id="draftID"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{ draft.value.ProductDraftID != null ? draft.value.ProductDraftID : -1 }}"
  />
  <SqlQueryUnified
    id="query_brands"
    cacheKeyTtl="86400"
    enableCaching={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="lookup_manufacturers_get"
    playgroundQueryUuid="26e2c256-5231-4046-9dd0-755929438a24"
    query={include("./lib/query_brands.sql", "string")}
    resourceDisplayName="PYR_Database"
    resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
    retoolVersion="3.33.7"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query_subtypes_ammo"
    cacheKeyTtl="86400"
    enableCaching={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="lookup_subtypes_ammo"
    playgroundQueryUuid="9b850e3f-2906-4170-a021-e23a71f5e73b"
    query={include("./lib/query_subtypes_ammo.sql", "string")}
    resourceDisplayName="PYR_Database"
    resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
    retoolVersion="3.33.7"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query_subtypes_accessories"
    cacheKeyTtl="86400"
    enableCaching={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="lookup_subtypes_accessories"
    playgroundQueryUuid="453bb917-8316-4dfa-b600-f7816b0d9c26"
    query={include("./lib/query_subtypes_accessories.sql", "string")}
    resourceDisplayName="PYR_Database"
    resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
    retoolVersion="3.33.7"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query_subtypes_models"
    cacheKeyTtl="86400"
    enableCaching={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="lookup_subtypes_models"
    playgroundQueryUuid="07912253-c969-4dff-9c47-6da7099d1328"
    query={include("./lib/query_subtypes_models.sql", "string")}
    resourceDisplayName="PYR_Database"
    resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
    retoolVersion="3.33.7"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query_check_parent"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    importedQueryInputs={{ ordered: [{ ProductID: "{{wa_parent_id.value}}" }] }}
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="model_by_id_get"
    playgroundQueryUuid="ea8219fd-fe3f-42bf-96b9-54db828c46cc"
    query={include("./lib/query_check_parent.sql", "string")}
    resourceDisplayName="PYR_Database"
    resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
    retoolVersion="3.33.7"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
  >
    <Event
      id="b1dadf2b"
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "false" }] }}
      pluginId="is_validating"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="2f401bb3"
      event="success"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{query_check_parent.data != null && query_check_parent.data.Name.length == 0}}",
          },
        ],
      }}
      pluginId="is_parent_not_found"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="a3fd488b"
      event="success"
      method="run"
      params={{
        ordered: [
          {
            src: 'var selected = [];\nif (query_check_parent.data != null && query_check_parent.data.Vendors != undefined && query_check_parent.data.Vendors != null && query_check_parent.data.Vendors[0] != null) {\n  const channels = JSON.parse(query_check_parent.data.Vendors[0]);\n  //console.log(channels);\n  if (channels.includes("Amazon")) {\n    selected.push("A");\n  }\n  if (channels.includes("eBay")) {\n    selected.push("E");\n  }\n}\nwa_sales_channels.setValue(selected);\n',
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="8467eb9b"
      event="failure"
      method="setValue"
      params={{ ordered: [{ value: "false" }] }}
      pluginId="is_validating"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlTransformQuery
    id="refresh_lookups"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    query={include("./lib/refresh_lookups.sql", "string")}
    resourceName="SQL Transforms"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      id="d0a04c8c"
      event="success"
      method="run"
      params={{
        ordered: [
          {
            src: "query_brands.invalidateCache();\nquery_categories.invalidateCache();\nquery_subtypes_accessories.invalidateCache();\nquery_subtypes_ammo.invalidateCache();\nquery_subtypes_models.invalidateCache();\nquery_suppliers.invalidateCache();\nquery_brands.trigger();\nquery_categories.trigger();\nquery_subtypes_accessories.trigger();\nquery_subtypes_ammo.trigger();\nquery_subtypes_models.trigger();\nquery_suppliers.trigger();\n",
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </SqlTransformQuery>
  <SqlQueryUnified
    id="query_draft_details"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    query={include("./lib/query_draft_details.sql", "string")}
    resourceDisplayName="PYR_Database"
    resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      id="9c039650"
      event="success"
      method="trigger"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { onSuccess: null },
                { onFailure: null },
                { additionalScope: null },
              ],
            },
          },
        ],
      }}
      pluginId="query_draft_sites"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="d78c7fcc"
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="init_draft_from_db"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="cfa06293"
      event="failure"
      method="setValue"
      params={{ ordered: [{ value: "false" }] }}
      pluginId="is_loading"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="query_draft_sites"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    query={include("./lib/query_draft_sites.sql", "string")}
    resourceDisplayName="PYR_Database"
    resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// Query results are available as the `data` variable
return data"
    updateSetValueDynamically={true}
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      id="3b5c3ed9"
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="init_sites_from_db"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="b86020fd"
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "false" }] }}
      pluginId="is_loading"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="a5d334f6"
      event="failure"
      method="setValue"
      params={{ ordered: [{ value: "false" }] }}
      pluginId="is_loading"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <State
    id="draft"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{}"
  />
  <State
    id="py_num"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{draft.value.PYCode}}"
  />
  <State
    id="is_validating"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="false"
  />
  <State
    id="is_parent_not_found"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="false"
  />
  <State
    id="is_loading"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="false"
  />
  <State
    id="is_wa_only"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{ localStorage.values.draft != undefined && localStorage.values.draft.WAOnly != undefined ? localStorage.values.draft.WAOnly : false }}"
  />
  <JavascriptQuery
    id="init_sites_from_db"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/init_sites_from_db.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="init_draft_from_db"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/init_draft_from_db.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="init_draft"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/init_draft.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="update_draft_from_ui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/update_draft_from_ui.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <State
    id="upc_code"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="null"
  />
  <SqlQueryUnified
    id="query_duplicates_check"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    importedQueryInputs={{ ordered: [{ UPC: "{{upc_code.value}}" }] }}
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="products_by_upc_get"
    playgroundQueryUuid="719c4c7c-4fd8-4995-9ea5-216d631b268c"
    query={include("./lib/query_duplicates_check.sql", "string")}
    resourceDisplayName="PYR_Database"
    resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
    retoolVersion="3.33.7"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
  >
    <Event
      id="1b667900"
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "false" }] }}
      pluginId="is_validating"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="33bcdd2a"
      event="success"
      method="show"
      params={{ ordered: [] }}
      pluginId="modalUPCDuplicate"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      id="507fb4b6"
      event="failure"
      method="setValue"
      params={{ ordered: [{ value: "false" }] }}
      pluginId="is_validating"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="query_draft_create"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    importedQueryInputs={{
      ordered: [
        { InsuranceLiabilityCode: "{{ draft.value.InsuranceLiabilityCode }}" },
        {
          SupplierCasePackQuantity: "{{draft.value.SupplierCasePackQuantity}}",
        },
        { ProductStatus: "{{draft.value.ProductStatus}}" },
        { AccountingCode: "{{draft.value.AccountingCode}}" },
        { FreightPercent: "{{draft.value.FreightPercent}}" },
        { Priority: "{{draft.value.Priority}}" },
        { MSRP: "{{draft.value.MSRP}}" },
        { DLXLineNo: "{{draft.value.DLXLineNo}}" },
        { ParentID: "{{draft.value.ParentID}}" },
        { Width: "{{draft.value.Width}}" },
        { Length: "{{draft.value.Length}}" },
        { DLXPartUnit: "EA" },
        { Height: "{{draft.value.Height}}" },
        { PriceList: "{{draft.value.PriceList}}" },
        { Brand: "{{draft.value.Brand}}" },
        { ProductType: "{{draft.value.ProductType}}" },
        { IsHazmat: "{{draft.value.IsHazmat}}" },
        { ECCN: "{{draft.value.ECCN}}" },
        { SpecialOrderWeeks: "{{draft.value.SpecialOrderWeeks}}" },
        { FBAProduct: "{{draft.value.FBAProduct}}" },
        { CasePackUOM: "EA" },
        { ProductSubType: "{{draft.value.ProductSubType}}" },
        { MPN: "{{draft.value.MPN}}" },
        {
          SupplierInsuranceLiabilityCode:
            "{{draft.value.InsuranceLiabilityCode}}",
        },
        { ItemType: "{{draft.value.ItemType}}" },
        { IsImported: "{{draft.value.IsImported}}" },
        { DistributionZone: "{{draft.value.DistributionZone}}" },
        { DLXBarcode: "{{draft.value.DLXBarcode}}" },
        { AmazonOnly: "{{draft.value.AmazonOnly}}" },
        { Currency: "{{draft.value.Currency}}" },
        { PackStockConv: "{{draft.value.PackStockConv}}" },
        { ETA: "{{draft.value.ETA}}" },
        { IssuePack: "{{draft.value.IssuePack}}" },
        { CountryOfOrigin: "{{draft.value.CountryOfOrigin}}" },
        { Buyer: "{{draft.value.Buyer}}" },
        { AssemblyTime: "{{ draft.value.AssemblyTime }}" },
        { Caliber: "{{draft.value.Caliber}}" },
        { BrandCode: "{{draft.value.SoldOn}}" },
        { AVPrice: "{{draft.value.AVPrice}}" },
        { SupplierNumber: "{{draft.value.SupplierNumber}}" },
        { DimensionalUnit: "{{draft.value.DimensionalUnit}}" },
        { WAOnly: "{{draft.value.WAOnly}}" },
        { ItemModel: "{{draft.value.ItemModel}}" },
        { Description2: "{{draft.value.Description2}}" },
        { HTC: "{{draft.value.HTC}}" },
        { LandedCost: "{{draft.value.LandedCost}}" },
        { SAGEOnly: "{{draft.value.SAGEOnly}}" },
        { IsCouponAllowed: "{{draft.value.IsCouponAllowed}}" },
        { HazMatUN: "{{draft.value.HazMatUN}}" },
        { CustomsDutyRate: "{{draft.value.CustomsDutyRate}}" },
        { Weight: "{{draft.value.Weight}}" },
        { SellingPrice: "{{draft.value.SellingPrice}}" },
        { Condition: "{{draft.value.Condition}}" },
        { BarcodeX3: "{{draft.value.BarcodeX3}}" },
        { WeightUOM: "{{draft.value.WeightUOM}}" },
        { SalesChannels: "{{ draft.value.SalesChannels }}" },
        { ITAR: "{{draft.value.ITAR}}" },
        { ProductCode: "{{draft.value.ProductCode}}" },
        { Description: "{{draft.value.Description}}" },
        { ProductSites: "{{ JSON.stringify(draft.value.Sites) }}" },
        { Category: "{{draft.value.Category}}" },
        { CreatedBy: "{{ current_user.fullName }}" },
        { CanadaAdmissible: "{{draft.value.CanadaAdmissible}}" },
      ],
    }}
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="product_draft_create"
    playgroundQueryUuid="743a1030-cfea-4430-be59-7c8f4cbc8f99"
    query={include("./lib/query_draft_create.sql", "string")}
    resourceDisplayName="PYR_Database"
    resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
    retoolVersion="3.33.7"
    runWhenModelUpdates={false}
    showLatestVersionUpdatedWarning={true}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="query_draft_update"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    importedQueryInputs={{
      ordered: [
        { InsuranceLiabilityCode: "{{ draft.value.InsuranceLiabilityCode }}" },
        {
          SupplierCasePackQuantity: "{{draft.value.SupplierCasePackQuantity}}",
        },
        { ProductStatus: "{{draft.value.ProductStatus}}" },
        { AccountingCode: "{{draft.value.AccountingCode}}" },
        { FreightPercent: "{{draft.value.FreightPercent}}" },
        { Priority: "{{draft.value.Priority}}" },
        { MSRP: "{{draft.value.MSRP}}" },
        { DLXLineNo: "{{draft.value.DLXLineNo}}" },
        { ParentID: "{{draft.value.ParentID}}" },
        { Width: "{{draft.value.Width}}" },
        { Length: "{{draft.value.Length}}" },
        { DLXPartUnit: "EA" },
        { Height: "{{draft.value.Height}}" },
        { PriceList: "{{draft.value.PriceList}}" },
        { Brand: "{{draft.value.Brand}}" },
        { ProductType: "{{draft.value.ProductType}}" },
        { IsHazmat: "{{draft.value.IsHazmat}}" },
        { ECCN: "{{draft.value.ECCN}}" },
        { SpecialOrderWeeks: "{{draft.value.SpecialOrderWeeks}}" },
        { FBAProduct: "{{draft.value.FBAProduct}}" },
        { CasePackUOM: "EA" },
        { ProductSubType: "{{draft.value.ProductSubType}}" },
        { ChangedBy: "{{ current_user.fullName }}" },
        { MPN: "{{draft.value.MPN}}" },
        {
          SupplierInsuranceLiabilityCode:
            "{{draft.value.InsuranceLiabilityCode}}",
        },
        { ItemType: "{{draft.value.ItemType}}" },
        { ProductDraftID: "{{draft.value.ProductDraftID}}" },
        { IsImported: "{{draft.value.IsImported}}" },
        {
          ChangedDateTime: "{{ moment().utc().format('YYYY-MM-DD HH:mm:ss') }}",
        },
        { DistributionZone: "{{draft.value.DistributionZone}}" },
        { DLXBarcode: "{{draft.value.DLXBarcode}}" },
        { AmazonOnly: "{{draft.value.AmazonOnly}}" },
        { Currency: "{{draft.value.Currency}}" },
        { PackStockConv: "{{draft.value.PackStockConv}}" },
        { ETA: "{{draft.value.ETA}}" },
        { IssuePack: "{{draft.value.IssuePack}}" },
        { CountryOfOrigin: "{{draft.value.CountryOfOrigin}}" },
        { Buyer: "{{draft.value.Buyer}}" },
        { AssemblyTime: "{{ draft.value.AssemblyTime }}" },
        { Caliber: "{{draft.value.Caliber}}" },
        { BrandCode: "{{draft.value.SoldOn}}" },
        { AVPrice: "{{draft.value.AVPrice}}" },
        { SupplierNumber: "{{draft.value.SupplierNumber}}" },
        { DimensionalUnit: "{{draft.value.DimensionalUnit}}" },
        { WAOnly: "{{draft.value.WAOnly}}" },
        { ItemModel: "{{draft.value.ItemModel}}" },
        { Description2: "{{draft.value.Description2}}" },
        { HTC: "{{draft.value.HTC}}" },
        { LandedCost: "{{draft.value.LandedCost}}" },
        { SAGEOnly: "{{draft.value.SAGEOnly}}" },
        { IsCouponAllowed: "{{draft.value.IsCouponAllowed}}" },
        { HazMatUN: "{{draft.value.HazMatUN}}" },
        { CustomsDutyRate: "{{draft.value.CustomsDutyRate}}" },
        { Weight: "{{draft.value.Weight}}" },
        { SellingPrice: "{{draft.value.SellingPrice}}" },
        { Condition: "{{draft.value.Condition}}" },
        { BarcodeX3: "{{draft.value.BarcodeX3}}" },
        { WeightUOM: "{{draft.value.WeightUOM}}" },
        { SalesChannels: "{{ draft.value.SalesChannels }}" },
        { ITAR: "{{draft.value.ITAR}}" },
        { ProductCode: "{{draft.value.ProductCode}}" },
        { Description: "{{draft.value.Description}}" },
        { ProductSites: "{{ JSON.stringify(draft.value.Sites) }}" },
        { Category: "{{draft.value.Category}}" },
        { CanadaAdmissible: "{{draft.value.CanadaAdmissible}}" },
      ],
    }}
    isImported={true}
    notificationDuration={4.5}
    playgroundQueryName="product_draft_update"
    playgroundQueryUuid="27250d76-f91d-4f84-b8b8-286265843d82"
    query={include("./lib/query_draft_update.sql", "string")}
    resourceDisplayName="PYR_Database"
    resourceName="de9b6446-d10a-4c0a-a662-d5ab043e6883"
    retoolVersion="3.33.7"
    runWhenModelUpdates={false}
    showLatestVersionUpdatedWarning={true}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
  />
  <JavascriptQuery
    id="duplicate_draft"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/duplicate_draft.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
</GlobalFunctions>
