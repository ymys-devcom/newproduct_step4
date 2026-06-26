<App>
  <Include src="./functions.rsx" />
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ size: "12px" }}
    h1Font={{ size: "36px" }}
    h2Font={{ size: "28px" }}
    h3Font={{ size: "24px" }}
    h4Font={{ size: "18px" }}
    h5Font={{ size: "16px" }}
    h6Font={{ size: "14px" }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#cc0000"
    secondary=""
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder=""
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder=""
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Include src="./src/modalFormValidation.rsx" />
  <Include src="./src/modalUPCDuplicate.rsx" />
  <Frame
    id="$main"
    _disclosedFields={{ array: [] }}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Module
      id="mainmenu1"
      margin="0"
      name="mainmenu"
      pageUuid="50d452ce-f68c-11ee-ac70-d7553e1d679c"
    />
    <Breadcrumbs
      id="breadcrumbs1"
      itemMode="static"
      marginType="normal"
      value="{{ retoolContext.appUuid }}"
    >
      <Option
        id="c9776"
        appTarget="5e31d040-f0f1-11ee-9b9a-df41a952f1de"
        itemType="app"
        label="Products"
      >
        <Event
          id="299e76ca"
          event="click"
          method="openApp"
          params={{
            ordered: [
              { uuid: "5e31d040-f0f1-11ee-9b9a-df41a952f1de" },
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
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="b1007" itemType="custom" label="Product Draft" />
    </Breadcrumbs>
    <Spacer id="spacer1" marginType="normal" />
    <Text
      id="text10"
      marginType="normal"
      value={
        '## [{{ draftID.value > 0 ? "#" + draftID.value : "NEW"}}] Product Code{{ wa_item_code.value.length > 0 ? ": " + wa_item_code.value.toLocaleUpperCase() : "" }} [{{ draftID.value > 0 ? ( draft.value.State == "ClickUp" ? "Ready to Work" : (draft.value.State == "Draft" ? "Draft" : "Incomplete Submission" )) : "Draft"}}] '
      }
      verticalAlign="center"
    />
    <Link
      id="link2"
      hidden="{{ draft.value == null || draft.TaskURL == null}}"
      horizontalAlign="right"
      iconAfter="bold/interface-link-square-alternate"
      marginType="normal"
      style={{
        ordered: [
          { fontSize: "h4Font" },
          { fontWeight: "700" },
          { lineHeight: "1.11em" },
        ],
      }}
      text="ClickUp Task "
      textSize="h4"
    >
      <Event
        id="014e584d"
        event="click"
        method="openUrl"
        params={{ ordered: [{ url: "{{draft.value.TaskURL}}" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Spacer id="spacer2" marginType="normal" />
    <Include src="./src/steppedContainer.rsx" />
    <Spacer id="spacer3" marginType="normal" />
    <Link
      id="link1"
      marginType="normal"
      text="Cancel and go Back"
      textSize="default"
    >
      <Event
        id="91a928d6"
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "5e31d040-f0f1-11ee-9b9a-df41a952f1de" },
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
        waitMs="0"
        waitType="debounce"
      />
    </Link>
    <Text
      id="text135"
      hidden="{{draft.value.CreatedDateTime == null || draft.value.WAOnly == false}}"
      horizontalAlign="right"
      marginType="normal"
      value={
        'Created {{draft.value.CreatedDateTime != null ? moment(draft.value.CreatedDateTime).format("M/D/YYYY h:mm A") : ""}} by {{ draft.value.CreatedBy }}'
      }
      verticalAlign="center"
    />
    <Text
      id="text136"
      hidden="{{draft.value.ChangedDateTime == null || draft.value.WAOnly == false}}"
      horizontalAlign="right"
      marginType="normal"
      value={
        'Last Changed {{draft.value.ChangedDateTime != null ? moment(draft.value.ChangedDateTime).format("M/D/YYYY h:mm A") : ""}} by {{ draft.value.ChangedBy }}'
      }
      verticalAlign="center"
    />
  </Frame>
</App>
