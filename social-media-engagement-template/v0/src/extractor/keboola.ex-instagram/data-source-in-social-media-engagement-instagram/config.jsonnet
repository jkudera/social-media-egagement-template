{
  parameters: {
    accounts: {
      "17841400386756501": {
        name: "Coffee to Home",
        category: "Specialty Grocery Store",
        id: "17841400386756501",
        fb_page_id: "683499195074649",
      },
    },
    "api-version": "v14.0",
    queries: [
      {
        id: 13831,
        type: "nested-query",
        name: "media",
        query: {
          path: "media",
          fields: "id,caption,media_type,like_count,ig_id,comments_count,is_comment_enabled,media_url,owner,permalink,shortcode,timestamp,thumbnail_url,comments,from_id,from_full_name,impressions,reach,engagement,saved",
          limit: "25",
          ids: "",
        },
      },
      {
        id: 32736,
        type: "nested-query",
        name: "media_lifetime_insights",
        query: {
          path: "media",
          fields: "insights.metric(impressions,reach,engagement,saved)",
          limit: "25",
          ids: "",
        },
      },
      {
        id: 6580,
        type: "nested-query",
        name: "page_daily_insights",
        query: {
          path: "",
          fields: Input("ex-instagram-queries-2-query-fields"),
          limit: "25",
          ids: "",
        },
      },
    ],
  },
  authorization: {
    oauth_api: {
      id: "34211636",
      version: 3,
    },
  },
}
