{
  authorization: {
    oauth_api: {
      id: "28660296",
      version: 3,
    },
  },
  parameters: {
    accounts: {
      "177057932317550": {
        category: "Business consultant",
        category_list: [
          {
            id: "179672275401610",
            name: "Business consultant",
          },
          {
            id: "1130035050388269",
            name: "Information technology company",
          },
        ],
        name: "Keboola",
        id: "177057932317550",
      },
    },
    "api-version": "v3.3",
    queries: [
      {
        id: 13510,
        type: "nested-query",
        name: "feed",
        query: {
          path: "feed",
          fields: "message,created_time,shares,actions,status_type,from,call_to_action,post_impressions,post_impressions_unique, engagement, post_negative_feedback, post_engaged_users, post_consumptions, post_impressions_fan, post_impressions_paid,  page_posts_impressions_organic, page_posts_impressions_paid, page_posts_impressions",
          limit: "25",
          ids: "177057932317550",
        },
        disabled: false,
      },
      {
        id: 28030,
        type: "nested-query",
        name: "feed_likes",
        query: {
          path: "feed",
          fields: "reactions.type(LIKE).summary(total_count).limit(0)",
          limit: "25",
          ids: "",
        },
      },
      {
        id: 86221,
        type: "nested-query",
        name: "page_insights",
        query: {
          path: "",
          fields: Input("ex-facebook-queries-2-query-fields"),
          limit: "25",
          ids: "",
          since: "",
          until: "",
        },
      },
    ],
  },
}
