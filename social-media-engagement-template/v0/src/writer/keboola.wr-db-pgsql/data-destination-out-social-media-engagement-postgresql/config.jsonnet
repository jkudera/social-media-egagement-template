{
  parameters: {
    db: {
      driver: Input("wr-db-pgsql-db-driver"),
      port: Input("wr-db-pgsql-db-port"),
      schema: Input("wr-db-pgsql-db-schema"),
      host: Input("wr-db-pgsql-db-host"),
      user: Input("wr-db-pgsql-db-user"),
      database: Input("wr-db-pgsql-db-database"),
      "#password": Input("wr-db-pgsql-db-password"),
    },
  },
}
