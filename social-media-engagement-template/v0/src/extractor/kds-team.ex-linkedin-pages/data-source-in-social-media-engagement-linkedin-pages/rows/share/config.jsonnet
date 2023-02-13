{
  parameters: {
    endpoints: "share_statistics_time_bound",
    destination: {
      load_type: "full_load",
    },
    sync_options: {
      date_to: Input("ex-linkedin-pages-sync-options-date-to"),
      date_from: Input("ex-linkedin-pages-sync-options-date-from"),
    },
  },
}
