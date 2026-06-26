<ModalFrame
  id="modalFormValidation"
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
>
  <Header>
    <Text
      id="modalTitle1"
      marginType="normal"
      value="### Incomplete Form"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      marginType="normal"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        id="9105b927"
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFormValidation"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text9"
      marginType="normal"
      value="**The form has missing required fields or validations not passed.**

Please close this pop-up and complete the form with all the required fields filled in, then proceed to the next step."
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <ButtonGroup2 id="buttonGroup1" alignment="center" overflowPosition={2}>
      <ButtonGroup2-Button
        id="d5e7e"
        styleVariant="solid"
        text="Stay and Continue editing"
      >
        <Event
          id="4ef9dd8f"
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="modalFormValidation"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="47548670"
          event="click"
          method="setValue"
          params={{ ordered: [{ value: "{{steps.values[3]}}" }] }}
          pluginId="steps"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="fff8a"
        styleVariant="outline"
        text="Finish later"
      >
        <Event
          id="356db49a"
          event="click"
          method="run"
          params={{
            ordered: [
              {
                src: 'var appID = "898d3968-1cdf-11ef-85f5-7bd7adeb242c";\n\nswitch (steps.selectedIndex) {\n  case 0: \n    appID = "6abdc46c-1cdf-11ef-acc3-d7a0eda619af"; \n    break;\n  case 1: \n    appID = "7193db28-1cdf-11ef-84dd-039d8b6046e1"; \n    break;\n  case 2: \n    appID = "80bc7902-1cdf-11ef-84dd-8731e4e2d072"; \n    break;\n  case 3: \n    //appID = "853d5618-1cdf-11ef-84dd-bf18abdfbc52"; \n    appID = "898d3968-1cdf-11ef-85f5-7bd7adeb242c"; \n    break;\n  default: \n    appID = "898d3968-1cdf-11ef-85f5-7bd7adeb242c"; \n    break;\n}\n\nutils.openApp(appID, {queryParams: {_embed: "true"}});',
              },
            ],
          }}
          pluginId=""
          type="script"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          id="96c6d3e4"
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="modalFormValidation"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
  </Footer>
</ModalFrame>
