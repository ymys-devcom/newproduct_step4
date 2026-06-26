<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden="{{!is_wa_only.value}}"
  margin="0"
  marginType="none"
  padding="0"
  showBody={true}
  style={{ ordered: [{ border: "surfacePrimary" }] }}
>
  <Header>
    <Text
      id="containerTitle9"
      marginType="normal"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="1eaa2" viewKey="View 1">
    <Select
      id="wa_cost_currency"
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
    <NumberInput
      id="wa_list_price"
      allowNull={true}
      currency="{{ wa_currency.value }}"
      decimalPlaces="2"
      format="currency"
      hidden=""
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
    <Text
      id="text11"
      heightType="fixed"
      marginType="normal"
      value="This is estimated landed cost of the product in the US$"
      verticalAlign="center"
    />
    <Select
      id="wa_currency"
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
      hidden=""
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
