{
  authorization: {
    oauth_api: {
      id: "34214631",
      version: 3,
    },
  },
  parameters: {
    tables: [
      {
        id: 69562,
        action: "update",
        sheetTitle: "Sheet1",
        enabled: true,
        tableId: "out.c-social-media-engagement.pages_engagement",
        title: "pages_engagement",
        fileId: "1opyy1TdkBg6qtg0pmveMNo9KRbVstOydqXlehjVkhlM",
        sheetId: 0,
      },
      {
        id: 37237,
        action: "update",
        sheetTitle: "Sheet1",
        enabled: true,
        tableId: "out.c-social-media-engagement.posts_engagement",
        title: "posts_engagement",
        fileId: "1U-A8gMBQQewOtcu5xNE_qjVh9ba6RD36CWjWHMNB7To",
        sheetId: 0,
      },
    ],
  },
  storage: {
    input: {
      tables: [
        {
          source: "out.c-social-media-engagement.pages_engagement",
          destination: "out.c-social-media-engagement.pages_engagement.csv",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
        {
          source: "out.c-social-media-engagement.posts_engagement",
          destination: "out.c-social-media-engagement.posts_engagement.csv",
          where_column: "",
          where_values: [],
          where_operator: "eq",
          columns: [],
        },
      ],
    },
  },
}
