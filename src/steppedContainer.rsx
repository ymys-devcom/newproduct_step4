<Container
  id="steppedContainer"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  marginType="normal"
  padding="12px"
  showBody={true}
  showFooter={true}
  showHeader={true}
  style={{ ordered: [{ background: "canvas" }] }}
>
  <Header>
    <Steps
      id="steps2"
      events={[]}
      hidden="true"
      horizontalAlign="center"
      itemMode="static"
      marginType="normal"
      showStepNumbers={true}
      style={{ ordered: [{ inactiveBackground: "rgba(183, 179, 179, 0.6)" }] }}
      targetContainerId="steppedContainer"
      value="WebAdmin"
    >
      <Option
        id="66604"
        hidden="{{is_wa_only.value}}"
        label="General Info (X3)"
        value="General"
      />
      <Option
        id="1b687"
        hidden="{{is_wa_only.value}}"
        label="Shipping (X3)"
        value="Shipping"
      />
      <Option
        id="de2bd"
        hidden="{{is_wa_only.value}}"
        label="Sites (X3)"
        value="Sites"
      />
      <Option
        id="7cec4"
        hidden={'{{draft.value.DistributionZone == "I"}}'}
        label="Web Admin"
        value="WebAdmin"
      />
      <Option
        id="9fa18"
        hidden={false}
        label="Review and Submit"
        value="Submit"
      />
    </Steps>
    <Tabs
      id="steps"
      alignment="center"
      itemMode="static"
      style={{ ordered: [{ pillBorderRadius: "16px" }] }}
      value="{{ self.values[3] }}"
    >
      <Option
        id="4220f"
        disabled="{{localStorage.values.isValidStep1 == undefined }}"
        hidden="{{ draft.value.WAOnly == true }}"
        icon={
          '{{ localStorage.values.isValidStep1 == undefined ? "/icon:bold/interface-geometric-circle-alternate" : (localStorage.values.isValidStep1 == true ? "/icon:bold/interface-validation-check-circle-alternate" : "/icon:bold/interface-alert-warning-circle" )}}'
        }
        iconPosition="left"
        label="General Info (X3)"
        value="General"
      />
      <Option
        id="b62d7"
        disabled="{{localStorage.values.isValidStep2 == undefined }}"
        hidden="{{ draft.value.WAOnly == true }}"
        icon={
          '{{ localStorage.values.isValidStep2 == undefined ? "/icon:bold/interface-geometric-circle-alternate" : (localStorage.values.isValidStep2 == true ? "/icon:bold/interface-validation-check-circle-alternate" : "/icon:bold/interface-alert-warning-circle" )}}'
        }
        iconPosition="left"
        label="Shipping (X3)"
        value="Shipping"
      />
      <Option
        id="f15f8"
        disabled="{{ localStorage.values.isValidStep3 == undefined }}"
        hidden="{{ draft.value.WAOnly == true }}"
        icon={
          '{{ localStorage.values.isValidStep3 == undefined ? "/icon:bold/interface-geometric-circle-alternate" : (localStorage.values.isValidStep3 == true ? "/icon:bold/interface-validation-check-circle-alternate" : "/icon:bold/interface-alert-warning-circle" )}}'
        }
        iconPosition="left"
        label="Sites (X3)"
        value="Sites"
      />
      <Option
        id="b215c"
        hidden={false}
        icon={
          '{{ localStorage.values.isValidStep4 == undefined ? "/icon:bold/interface-geometric-circle-alternate" : (localStorage.values.isValidStep4== true ? "/icon:bold/interface-validation-check-circle-alternate" : "/icon:bold/interface-alert-warning-circle" )}}'
        }
        iconPosition="left"
        label="Web Admin"
        value="WebAdmin"
      />
      <Option
        id="6b4e8"
        disabled={
          '{{draft.value.State == "Draft" && localStorage.values.isValidStep4 == undefined }}'
        }
        icon="bold/interface-geometric-circle-alternate"
        iconPosition="left"
        label="Review and Submit"
        value="Submit"
      />
      <Event
        id="6f7f968a"
        event="change"
        method="run"
        params={{
          ordered: [
            {
              src: 'var appID = "898d3968-1cdf-11ef-85f5-7bd7adeb242c";\n\nswitch (steps.selectedIndex) {\n  case 0: \n    appID = "6abdc46c-1cdf-11ef-acc3-d7a0eda619af"; \n    break;\n  case 1: \n    appID = "7193db28-1cdf-11ef-84dd-039d8b6046e1"; \n    break;\n  case 2: \n    appID = "80bc7902-1cdf-11ef-84dd-8731e4e2d072"; \n    break;\n  case 3: \n    appID = "853d5618-1cdf-11ef-84dd-bf18abdfbc52"; \n    break;\n  default: \n    appID = "898d3968-1cdf-11ef-85f5-7bd7adeb242c"; \n    break;\n}\n\nconst formValidated = await form_wa.validate();\nawait update_draft_from_ui.trigger();\n\nif (!formValidated && draft.value.DistributionZone == "P") {\n  is_loading.setValue(false);\n  modalFormValidation.show();\n  localStorage.setValue("isValidStep4", false);\n  console.log("invalid");\n\n} else {\n  console.log("valid");\n  await localStorage.setValue("isValidStep4", true);\n  utils.openApp(appID, {queryParams: {_embed: "true"}});\n}\n',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Tabs>
  </Header>
  <View
    id="8c791"
    hidden={'{{ distribution_zone.value == "I" }} '}
    label="Web Admin"
    tooltip="Purchase details for SAGE X3"
    viewKey="Step_2"
  >
    <Form
      id="form_wa"
      disabled={
        '{{draft.value.State != "Draft" && draft.value.State != "Sage"}}'
      }
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hoistFetching={true}
      loading="{{is_loading.value}}"
      marginType="normal"
      overflowType="hidden"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter="false"
      showHeader="true"
      style={{
        ordered: [{ border: "surfacePrimary" }, { borderRadius: "8px" }],
      }}
    >
      <Header>
        <Text
          id="containerTitle8"
          marginType="normal"
          value={
            '#### {{ draft.value.DistributionZone == "I" ? "[OPTIONAL] " : "" }}Product Draft (Web Admin) {{py_num.value != null && py_num.value != undefined && py_num.value.trim() != "" ? \' - [\' + py_num.value + \']\' : ""}}'
          }
          verticalAlign="center"
        />
      </Header>
      <Body>
        <SegmentedControl
          id="wa_priority"
          hideLabel={false}
          itemMode="static"
          label="Priority"
          marginType="normal"
          paddingType="spacious"
          style={{
            ordered: [
              { border: "rgb(127, 37, 37)" },
              { background: "surfacePrimary" },
              { indicatorBackground: "rgb(127, 37, 37)" },
              { labels: "rgb(0, 0, 0)" },
            ],
          }}
          value={
            '{{ draft.value.Priority != null ? draft.value.Priority : "Medium" }} '
          }
        >
          <Option
            id="5102d"
            disabled={false}
            iconPosition="left"
            value="High"
          />
          <Option
            id="c12ec"
            disabled={false}
            iconPosition="left"
            value="Medium"
          />
          <Option id="c7dde" value="Low" />
          <Option id="cd930" value="Hold" />
        </SegmentedControl>
        <TextInput
          id="wa_item_code"
          customValidation={
            '{{ !(/^[a-zA-Z0-9\\/-]+$/.test(self.value)) ? "Only alphanumeric characters, - and / symbols are allowed." : "" }}'
          }
          disabled="{{!is_wa_only.value}}"
          formDataKey="product_code"
          label="Item Code"
          marginType="normal"
          maxLength="20"
          placeholder="Product Code"
          required={true}
          value={
            '{{ draft.value.ProductCode != null ? draft.value.ProductCode.toUpperCase() : "" }}'
          }
        >
          <Event
            id="2ab5ca1d"
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="update_draft_from_ui"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </TextInput>
        <TextInput
          id="wa_mpn"
          disabled="{{!is_wa_only.value}}"
          label="Manufacturer Part Number"
          marginType="normal"
          maxLength="30"
          placeholder="Enter value"
          required={true}
          value="{{ draft.value.MPN }}"
        />
        <TextInput
          id="wa_upc"
          customValidation={
            '{{ self.value != null && self.value.trim() != "" && (/*isNaN(Number(self.value))*/ !(/^\\d+$/.test(self.value)) || self.value.toString().length > 13) ? "UPC code must be 13 digits or less" : "" }}'
          }
          disabled="{{!is_wa_only.value}}"
          label="UPC"
          marginType="normal"
          placeholder="Enter value"
          value="{{draft.value.BarcodeX3}}"
        >
          <Event
            id="2e56a4d5"
            event="blur"
            method="run"
            params={{
              ordered: [
                {
                  src: "if (upc_barcode.value != null && upc_barcode.value.trim().length > 0) {\n  await upc_code.setValue(upc_barcode.value.trim());\n  is_validating.setValue(true);\n  query_duplicates_check.trigger();\n}",
                },
              ],
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </TextInput>
        <TextInput
          id="wa_product_name"
          disabled="{{!is_wa_only.value}}"
          formDataKey=""
          label="Product Name"
          marginType="normal"
          maxLength="50"
          placeholder="Product Name"
          required={true}
          value="{{ draft.value.Description }}"
        />
        <Select
          id="wa_manfuacturer"
          captionByIndex=""
          colorByIndex={[]}
          data="{{ query_brands.data }}"
          deprecatedLabels={[]}
          disabled="{{!is_wa_only.value}}"
          disabledByIndex={[]}
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex={[]}
          formDataKey=""
          hiddenByIndex="{{ checkbox_active_only.value == 1 && item.ShowManufacturer == 0 }}"
          iconByIndex={[]}
          imageByIndex={[]}
          label="Manufacturer/Brand"
          labels="{{ item.ShortBrandName }}"
          labelWidth="50
"
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="Select an option"
          searchMode="caseInsensitive"
          showSelectionIndicator={true}
          tooltipByIndex={[]}
          value="{{draft.value.Brand}}"
          values="{{ item.ManufacturerID }}"
        />
        <Checkbox
          id="checkbox_active_only"
          disabled="true"
          label="Active Only"
          labelWidth={100}
          marginType="normal"
          value="false"
        />
        <Select
          id="condition"
          captionByIndex=""
          colorByIndex={[]}
          data="{{ query_conditions.data }}"
          deprecatedLabels={[]}
          disabled="false"
          disabledByIndex={[]}
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex={[]}
          formDataKey=""
          hidden="{{!draft.value.WAOnly}}"
          hiddenByIndex=""
          iconByIndex={[]}
          imageByIndex={[]}
          label="Condition"
          labels="{{ item.SageDescription }}"
          labelWrap={true}
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          searchMode="caseInsensitive"
          showSelectionIndicator={true}
          tooltipByIndex={[]}
          value={
            '{{ draft.value != null  && draft.value.Condition != undefined && draft.value.Condition != null ? draft.value.Condition : "NEW" }}'
          }
          values="{{ item.SageCode }}"
        />
        <SegmentedControl
          id="wa_product_type"
          hideLabel={false}
          itemMode="static"
          label="Product Type"
          marginType="normal"
          paddingType="spacious"
          style={{
            ordered: [
              { border: "rgb(127, 37, 37)" },
              { indicatorBackground: "rgb(127, 37, 37)" },
              { background: "surfacePrimary" },
              { labels: "rgba(0, 0, 0, 1)" },
            ],
          }}
          value={
            '{{draft.value.ProductType != null && draft.value.ProductType != "" ? draft.value.ProductType : self.values[0] }}'
          }
        >
          <Option id="cd930" value="Models" />
          <Option id="c7dde" value="Accessories" />
          <Option
            id="c12ec"
            disabled={false}
            iconPosition="left"
            value="Pellets"
          />
          <Event
            id="87a2a578"
            event="change"
            method="setValue"
            params={{ ordered: [{ value: '""' }] }}
            pluginId="wa_product_subtype"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </SegmentedControl>
        <Select
          id="wa_product_subtype"
          captionByIndex={[]}
          colorByIndex={[]}
          data="{{ wa_product_type.selectedIndex == 1 
   ? query_subtypes_accessories.data : (wa_product_type.selectedIndex == 2 ? query_subtypes_ammo.data : query_subtypes_models.data)
}}"
          deprecatedLabels={[]}
          disabled="false"
          disabledByIndex={[]}
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex={[]}
          formDataKey=""
          hiddenByIndex="{{ wa_product_type.selectedIndex == 0 && item.ManufacturerID != wa_manfuacturer.value }}"
          iconByIndex={[]}
          imageByIndex={[]}
          label="Product Sub-Type"
          labels="{{ item.Description }}"
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          searchMode="caseInsensitive"
          showSelectionIndicator={true}
          style={{ ordered: [] }}
          tooltipByIndex={[]}
          value="{{ draft.value.ProductSubType != null ? parseInt(draft.value.ProductSubType) : null }}"
          values="{{ item.SubTypeID }}"
        />
        <Button
          id="closeButton1"
          disabled="{{wa_parent_id.value == null || is_validating.value || wa_parent_id.invalid }}"
          horizontalAlign="left"
          iconBefore="bold/interface-arrows-synchronize"
          marginType="normal"
          style={{ ordered: [] }}
        >
          <Event
            id="0bdd8907"
            enabled="{{wa_parent_id.value != null}}"
            event="click"
            method="setValue"
            params={{ ordered: [{ value: "true" }] }}
            pluginId="is_validating"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            id="aa1794a6"
            enabled="{{wa_parent_id.value != null}}"
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="query_check_parent"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <NumberInput
          id="wa_parent_id"
          allowNull={true}
          currency="USD"
          inputValue={0}
          label="Parent Model ID"
          labelWidth="67"
          marginType="normal"
          placeholder="Enter value"
          value="{{draft.value.ParentID}}"
        >
          <Event
            id="92b105b9"
            enabled="{{/*self.value != null || */wa_parent_id.invalid == false}}"
            event="blur"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="query_check_parent"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            id="640edbfa"
            enabled="{{self.value != null || wa_parent_id.invalid == false}}"
            event="blur"
            method="setValue"
            params={{ ordered: [{ value: "true" }] }}
            pluginId="is_validating"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            id="9a2d31f1"
            event="change"
            method="setValue"
            params={{ ordered: [{ value: "false" }] }}
            pluginId="is_parent_not_found"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            id="525dffb8"
            event="change"
            method="run"
            params={{ ordered: [{ src: "query_check_parent.data = null;" }] }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </NumberInput>
        <Text
          id="text_no_parent"
          hidden="{{wa_parent_id.value == null || is_validating.value || is_parent_not_found.value == false }}"
          marginType="normal"
          style={{ ordered: [{ color: "danger" }] }}
          value="⚠️ **Product with provided ID was not found. Please check the ID or leave empty if you want to create a Parent Model.**"
          verticalAlign="center"
        />
        <Date
          id="wa_eta"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          iconBefore="bold/interface-calendar"
          label="In Stock Date (ETA)"
          labelWidth="67"
          marginType="normal"
          showClear={true}
          value="{{ draft.value.ETA != null ? draft.value.ETA : null }}"
        />
        <NumberInput
          id="wa_special_order"
          allowNull={true}
          currency="USD"
          disabled="{{draft.value.IsSpecialOrder == false}}"
          inputValue={0}
          label="Special Order Weeks"
          labelWidth="67"
          marginType="normal"
          max="52"
          placeholder="Enter value"
          required="{{draft.value.IsSpecialOrder}}"
          showClear={true}
          value="{{draft.value.SpecialOrderWeeks != null ? draft.value.SpecialOrderWeeks : (draft.value.IsSpecialOrder ? 8 : null)}}"
        />
        <Image
          id="image1"
          heightType="fixed"
          hidden="{{wa_parent_id.value == null || is_validating.value || is_parent_not_found.value || query_check_parent.data == null || query_check_parent.data.SmallImage.length == 0 }}"
          horizontalAlign="center"
          marginType="normal"
          src={
            'https://www.pyramydair.com/images/{{query_check_parent.data != null ? query_check_parent.data.SmallImage[0] : ""}}'
          }
        />
        <Text
          id="text_parent_name"
          heightType="fixed"
          hidden="{{wa_parent_id.value == null || is_validating.value || is_parent_not_found.value || query_check_parent.data == null || query_check_parent.data.Name.length == 0 }}"
          marginType="normal"
          style={{ ordered: [] }}
          value={
            '{{query_check_parent.data != null ? query_check_parent.data.Name[0] : ""}}'
          }
          verticalAlign="center"
        />
        <NumberInput
          id="list_price"
          allowNull={true}
          currency="{{ list_price_currency.value }}"
          decimalPlaces="2"
          format="currency"
          hidden="true"
          inputValue={0}
          label="Estimated Cost"
          labelWidth="67
"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          value="{{ draft.value.PriceList }}"
        />
        <Include src="./container1.rsx" />
        <NumberInput
          id="wa_msrp"
          allowNull={true}
          currency="{{ wa_cost_currency.value }}"
          decimalPlaces="2"
          format="currency"
          hidden=""
          inputValue={0}
          label="MSRP"
          labelWidth="67"
          marginType="normal"
          placeholder="Enter value"
          showSeparators={true}
          value="{{draft.value.MSRP}}"
        />
        <Select
          id="list_price_currency"
          captionByIndex=""
          colorByIndex=""
          data=""
          deprecatedLabels={[]}
          disabled="true"
          disabledByIndex=""
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex=""
          formDataKey="currency"
          hidden="true"
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          itemMode="static"
          label=""
          labels=""
          labelWrap={true}
          marginType="normal"
          overlayMaxHeight={375}
          placeholder="Select a currency"
          required={true}
          searchMode="disabled"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value={
            '{{ draft.value.Currency != undefined && draft.value.Currency.length > 0 ? draft.value.Currency : "USD" }}'
          }
          values=""
        >
          <Option id="2e766" disabled={false} hidden={false} value="CAD" />
          <Option id="8e586" disabled={false} hidden={false} value="EUR" />
          <Option id="ab34d" disabled={false} hidden={false} value="USD" />
        </Select>
        <Container
          id="container2"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          hidden=""
          margin="0"
          marginType="none"
          padding="0"
          showBody={true}
          style={{ ordered: [{ border: "surfacePrimary" }] }}
        >
          <Header>
            <Text
              id="containerTitle10"
              marginType="normal"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="1eaa2" viewKey="View 1">
            <NumberInput
              id="wa_selling_price"
              allowNull={true}
              currency="{{ wa_cost_currency2.value }}"
              decimalPlaces="2"
              format="currency"
              hidden=""
              inputValue={0}
              label="Selling Price"
              labelWidth="67"
              marginType="normal"
              placeholder="Enter value"
              showSeparators={true}
              value="{{draft.value.SellingPrice}}"
            >
              <Event
                id="471c685a"
                event="blur"
                method="run"
                params={{
                  ordered: [
                    {
                      src: "if (wa_selling_price.value != null) {\n  wa_av_price.setValue(wa_selling_price.value * 0.85);\n} ",
                    },
                  ],
                }}
                pluginId=""
                type="script"
                waitMs="0"
                waitType="debounce"
              />
            </NumberInput>
            <Select
              id="wa_cost_currency2"
              captionByIndex=""
              colorByIndex=""
              data=""
              deprecatedLabels={[]}
              disabled="true"
              disabledByIndex=""
              disabledValues={[]}
              emptyMessage="No options"
              fallbackTextByIndex=""
              formDataKey="currency"
              hidden="true"
              hiddenByIndex=""
              iconByIndex=""
              imageByIndex=""
              itemMode="static"
              label=""
              labels=""
              labelWrap={true}
              marginType="normal"
              overlayMaxHeight={375}
              placeholder="Select a currency"
              required={true}
              searchMode="disabled"
              showSelectionIndicator={true}
              tooltipByIndex=""
              value={
                '{{ draft.value.Currency != undefined && draft.value.Currency.length > 0 ? draft.value.Currency : "USD" }}'
              }
              values=""
            >
              <Option id="2e766" disabled={false} hidden={false} value="CAD" />
              <Option id="8e586" disabled={false} hidden={false} value="EUR" />
              <Option id="ab34d" disabled={false} hidden={false} value="USD" />
            </Select>
          </View>
        </Container>
        <Container
          id="container3"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          hidden=""
          margin="0"
          marginType="none"
          padding="0"
          showBody={true}
          style={{ ordered: [{ border: "surfacePrimary" }] }}
        >
          <Header>
            <Text
              id="containerTitle11"
              marginType="normal"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="1eaa2" viewKey="View 1">
            <NumberInput
              id="wa_av_price"
              allowNull={true}
              currency="{{ wa_cost_currency3.value }}"
              decimalPlaces="2"
              format="currency"
              hidden=""
              inputValue={0}
              label="AV Price"
              labelWidth="67"
              marginType="normal"
              placeholder="Enter value"
              showSeparators={true}
              value="{{draft.value.AVPrice /* != null ? draft.value.AVPrice : (wa_selling_price.value != null ? wa_selling_price.value * 0.85 : null) */}}"
            />
            <Select
              id="wa_cost_currency3"
              captionByIndex=""
              colorByIndex=""
              data=""
              deprecatedLabels={[]}
              disabled="true"
              disabledByIndex=""
              disabledValues={[]}
              emptyMessage="No options"
              fallbackTextByIndex=""
              formDataKey="currency"
              hidden="true"
              hiddenByIndex=""
              iconByIndex=""
              imageByIndex=""
              itemMode="static"
              label=""
              labels=""
              labelWrap={true}
              marginType="normal"
              overlayMaxHeight={375}
              placeholder="Select a currency"
              required={true}
              searchMode="disabled"
              showSelectionIndicator={true}
              tooltipByIndex=""
              value={
                '{{ draft.value.Currency != undefined && draft.value.Currency.length > 0 ? draft.value.Currency : "USD" }}'
              }
              values=""
            >
              <Option id="2e766" disabled={false} hidden={false} value="CAD" />
              <Option id="8e586" disabled={false} hidden={false} value="EUR" />
              <Option id="ab34d" disabled={false} hidden={false} value="USD" />
            </Select>
          </View>
        </Container>
        <SegmentedControl
          id="wa_is_coupon_allowed"
          data=""
          deprecatedLabels={[]}
          disabled="false"
          disabledByIndex=""
          formDataKey=""
          iconByIndex=""
          iconPositionByIndex=""
          itemMode="static"
          label="Is Coupon Allowed"
          labels=""
          labelWidth="67
"
          marginType="normal"
          paddingType="spacious"
          required={true}
          style={{
            ordered: [
              { background: "surfacePrimary" },
              { border: "rgb(127, 37, 37)" },
              { indicatorBackground: "rgba(127, 37, 37, 1)" },
              { labels: "rgba(0, 0, 0, 1)" },
            ],
          }}
          value="{{ draft.value.IsCouponAllowed != undefined && draft.value.IsCouponAllowed != null ? draft.value.IsCouponAllowed : 0}}"
          values=""
        >
          <Option
            id="0c798"
            disabled={false}
            iconPosition="left"
            label="Yes"
            value="1"
          />
          <Option
            id="28aa9"
            disabled={false}
            iconPosition="left"
            label="No"
            value="0"
          />
        </SegmentedControl>
        <RadioGroup
          id="wa_sold_on"
          groupLayout="singleColumn"
          itemMode="static"
          label="Sold on / Logo"
          marginType="normal"
          value={'{{draft.value.SoldOn != null ? draft.value.SoldOn : "ALL"}}'}
        >
          <Option id="b3d8a" value="ALL" />
          <Option id="b4878" value="PYR" />
          <Option id="29426" value="AGD" />
          <Option id="64fe9" disabled={false} hidden={false} value="AV" />
        </RadioGroup>
        <SwitchGroup
          id="wa_sales_channels"
          disabled="{{ true /*wa_parent_id.value != null*/}}"
          groupLayout="singleColumn"
          itemMode="static"
          label="Sales Channels"
          marginType="normal"
          value="{{ draft.value.SalesChannels != null && draft.value.SalesChannels.length > 0 ? JSON.parse(draft.value.SalesChannels) : null }}"
        >
          <Option id="3d244" label="Amazon" value="A" />
          <Option id="ba2ba" label="Ebay" value="E" />
          <Option id="59592" hidden="true" label="Wish" value="W" />
        </SwitchGroup>
      </Body>
      <Footer>
        <Button
          id="formButton7"
          marginType="normal"
          submit={true}
          submitTargetId="form_wa"
          text="Submit"
        />
      </Footer>
    </Form>
  </View>
  <Footer>
    <Button
      id="prevButton"
      disabled=""
      hidden="{{is_wa_only.value}}"
      iconBefore="bold/interface-arrows-left-alternate"
      marginType="normal"
      style={{
        ordered: [
          { background: "surfacePrimary" },
          { border: "surfaceSecondaryBorder" },
        ],
      }}
      text="Previous"
    >
      <Event
        id="c7ef15e2"
        enabled="{{ !(is_validating.value || query_brands.isFetching || query_subtypes_ammo.isFetching || query_subtypes_accessories.isFetching || query_subtypes_models.isFetching) }}"
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="update_draft_from_ui"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="f3d89772"
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "80bc7902-1cdf-11ef-84dd-8731e4e2d072" },
            {
              options: {
                ordered: [
                  {
                    queryParams: [
                      { ordered: [{ key: "_embed" }, { value: "true" }] },
                    ],
                  },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="100"
        waitType="debounce"
      />
    </Button>
    <Button
      id="nextButton"
      disabled="{{is_validating.value || query_brands.isFetching || query_subtypes_ammo.isFetching || query_subtypes_accessories.isFetching || query_subtypes_models.isFetching }}"
      iconAfter="bold/interface-arrows-right-alternate"
      marginType="normal"
      submitTargetId=""
      text="Next"
    >
      <Event
        id="68e095b0"
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "true" }] }}
        pluginId="is_loading"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        id="eb85ba45"
        event="click"
        method="run"
        params={{
          ordered: [
            {
              src: 'const formValidated = await form_wa.validate();\n//await form_wa.validate();\nawait update_draft_from_ui.trigger();\n\n//steppedContainer.showNextVisibleView();\n//const isInvalid = await form_wa.invalid;\n//console.log("not valid? " + form_wa.invalid);\nif (!formValidated && draft.value.DistributionZone == "P") {\n  is_loading.setValue(false);\n  modalFormValidation.show();\n  localStorage.setValue("isValidStep4", false);\n  console.log("invalid");\n\n} else {\n  console.log("valid");\n  await localStorage.setValue("isValidStep4", true);\n  utils.openApp("898d3968-1cdf-11ef-85f5-7bd7adeb242c", {queryParams: {_embed: "true"}});\n}\n',
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs=""
        waitType="debounce"
      />
    </Button>
    <Button
      id="button2"
      disabled="{{ is_loading.value || draftID.value <= 0 }}"
      hidden="{{!is_wa_only.value}}"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Duplicate Product"
    >
      <Event
        id="e301c1fc"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="duplicate_draft"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
  <Event
    id="93f32bad"
    event="change"
    method="validate"
    params={{ ordered: [] }}
    pluginId="form_general"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
</Container>
