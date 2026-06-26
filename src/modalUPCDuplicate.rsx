<ModalFrame
  id="modalUPCDuplicate"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle2"
      value="### Duplicate for UPC {{upc_code.value}}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton2"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        id="43a743cd"
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalUPCDuplicate"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text12"
      marginType="normal"
      value="**This UPC is already used on the following products:**"
      verticalAlign="center"
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ query_duplicates_check.data }}"
      defaultSelectedRow={{ mode: "none", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      heightType="auto"
      primaryKeyColumnId="7e728"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="7e728"
        alignment="left"
        editable={false}
        format="link"
        formatOptions={{ showUnderline: "hover", underlineStyle: "solid" }}
        groupAggregationMode="none"
        key="pyNumber"
        label="PY Number"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          id="1f9b9e3d"
          event="clickCell"
          method="openUrl"
          params={{
            ordered: [{ url: '{{"https://www.pyramydair.com/" + item}}' }],
          }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="6dd3c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="InventoryItemCode"
        label="Item Code"
        placeholder="Enter value"
        position="center"
        size={156}
        summaryAggregationMode="none"
      />
      <Column
        id="113b1"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={202}
        summaryAggregationMode="none"
      />
      <Column
        id="6a2b7"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="Discontinued"
        label="Discontinued"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride={'{{ item == 0 ? "No" : "Yes"}}'}
      />
      <Column
        id="0ad81"
        alignment="left"
        editableOptions={{ showStepper: true }}
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="sum"
        key="BrandCode"
        label="Brand code"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride={'{{item == 2 ? "AV" : "PYR"}}'}
      />
      <Column
        id="13c94"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="UPC"
        label="Upc"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
    </Table>
  </Body>
  <Footer>
    <Button id="button1" marginType="normal" text="Clsse">
      <Event
        id="c2d95fab"
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalUPCDuplicate"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
