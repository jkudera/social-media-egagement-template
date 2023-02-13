{
  parameters: {
    db: {
      driver: Input("wr-db-mysql-db-driver"),
      port: Input("wr-db-mysql-db-port"),
      "#password": Input("wr-db-mysql-db-password"),
      host: Input("wr-db-mysql-db-host"),
      user: Input("wr-db-mysql-db-user"),
      database: Input("wr-db-mysql-db-database"),
      ssl: {
        enabled: Input("wr-db-mysql-db-ssl-enabled"),
      },
      ssh: {
        enabled: Input("wr-db-mysql-db-ssh-enabled"),
      },
    },
  },
}
