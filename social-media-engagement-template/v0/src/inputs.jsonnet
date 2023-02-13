{
  stepsGroups: [
    {
      description: "Provide credentials for the source components.",
      required: "atLeastOne",
      steps: [
        {
          icon: "common:settings",
          name: "Default Step",
          description: "Default Step",
          inputs: [
            {
                id: "ex-linkedin-pages-sync-options-date-from",
                name: "Sync options Date from",
                description: "",
                type: "string",
                kind: "input",
                default: "12 months ago",
              },
              {
                id: "ex-linkedin-pages-sync-options-date-to",
                name: "Sync options Date to",
                description: "",
                type: "string",
                kind: "input",
                default: "now",
              },
              {
                id: "ex-facebook-queries-2-query-fields",
                name: "Queries Query Fields",
                description: "",
                type: "string",
                kind: "input",
                default: "insights.since(90 days ago).until(today).metric(page_views_total, page_fan_removes, page_fan_adds, page_fans, page_negative_feedback, page_consumptions, page_engaged_users, page_impressions)",
              },
              {
                id: "ex-instagram-queries-2-query-fields",
                name: "Queries Query Fields",
                description: "",
                type: "string",
                kind: "input",
                default: "insights.since(30 days ago).period(day).metric(reach,impressions,follower_count,email_contacts,text_message_clicks,get_directions_clicks,phone_call_clicks,website_clicks,profile_views)",
              },
          ],
        },
        
      {   
        description: "dbt Transformation",
        required: "all",
        steps: [
          {
            icon: "component:keboola.dbt-transformation",
            name: "dbt",
            description: "dbt Transformation",
            inputs: [],
          },
        ]
      },

      {
        description: "Configure your credentials for writer.",
        required: "optional",
        steps: [
          {
            icon: "component:keboola.wr-db-pgsql",
            name: "PostgreSQL Destination",
            description: "Load data into PostgreSQL",
            dialogName: "PostgreSQL Destination", 
            dialogDescription: "Data load to PostgreSQL DB.",
            inputs: [
              {
                id: "wr-db-pgsql-db-password",
                name: "Db Password",
                description: "",
                type: "string",
                kind: "hidden",
              },
              {
                id: "wr-db-pgsql-db-database",
                name: "Db Database",
                description: "",
                type: "string",
                kind: "input",
                default: "salesdemo",
              },
              {
                id: "wr-db-pgsql-db-driver",
                name: "Db Driver",
                description: "",
                type: "string",
                kind: "input",
                default: "pgsql",
              },
              {
                id: "wr-db-pgsql-db-host",
                name: "Db Host",
                description: "",
                type: "string",
                kind: "input",
                default: "keboolacasalesdemo.csjrlfk9cmjk.us-east-1.rds.amazonaws.com",
              },
              {
                id: "wr-db-pgsql-db-port",
                name: "Db Port",
                description: "",
                type: "string",
                kind: "input",
                default: "5432",
              },
              {
                id: "wr-db-pgsql-db-schema",
                name: "Db Schema",
                description: "",
                type: "string",
                kind: "input",
                default: "dbt_demo",
              },
              {
                id: "wr-db-pgsql-db-user",
                name: "Db User",
                description: "",
                type: "string",
                kind: "input",
                default: "keboola_ca",
              },
            ]
          },
          {
            icon: "component:keboola.wr-db-mysql",
            name: "My SQL Destination",
            description: "Load data into MySQL",
            dialogName: "My SQL Destination", 
            dialogDescription: "Data load to My SQL DB.",
            inputs: [{
              id: "wr-db-mysql-db-password",
              name: "Db Password",
              description: "",
              type: "string",
              kind: "hidden",
            },
            {
              id: "wr-db-mysql-db-database",
              name: "Db Database",
              description: "",
              type: "string",
              kind: "input",
              default: "salesdemo",
            },
            {
              id: "wr-db-mysql-db-driver",
              name: "Db Driver",
              description: "",
              type: "string",
              kind: "input",
              default: "mysql",
            },
            {
              id: "wr-db-mysql-db-host",
              name: "Db Host",
              description: "",
              type: "string",
              kind: "input",
              default: "keboolasalesdemo.csjrlfk9cmjk.us-east-1.rds.amazonaws.com",
            },
            {
              id: "wr-db-mysql-db-port",
              name: "Db Port",
              description: "",
              type: "int",
              kind: "input",
              default: 3306,
            },
            {
              id: "wr-db-mysql-db-ssh-enabled",
              name: "Db Ssh Enabled",
              description: "",
              type: "bool",
              kind: "confirm",
              default: false,
            },
            {
              id: "wr-db-mysql-db-ssl-enabled",
              name: "Db Ssl Enabled",
              description: "",
              type: "bool",
              kind: "confirm",
              default: false,
            },
            {
              id: "wr-db-mysql-db-user",
              name: "Db User",
              description: "",
              type: "string",
              kind: "input",
              default: "keboola_ca",
            },
            ]
          },
          
          {
            icon: "component:"+SnowflakeWriterComponentId(),
            name: "Snowflake Destination",
            description: "Load data into Snowflake",
            dialogName: "Snowflake Destination", 
            dialogDescription: "Data load to Snowflake DB.",
            inputs: [
              {
                id: "wr-snowflake-db-host",
                name: "Hostname",
                description: "Insert database hostname",
                type: "string",
                kind: "input",
                rules: "required",
                default: "hostname.com",
              },
              {
                id: "wr-snowflake-db-port",
                name: "Port",
                description: "Insert database port number.",
                type: "string",
                kind: "input",
                default: "443",
                showif: "[wr-snowflake-db-host] != ''",
              },
              {
                id: "wr-snowflake-db-user",
                name: "Username",
                description: "Insert database username.",
                type: "string",
                kind: "input",
                default: "userName",
                showif: "[wr-snowflake-db-host] != ''",
              },
              {
                id: "wr-snowflake-db-password",
                name: "Database Password",
                description: "Insert your password to the database.",
                showif: "[wr-snowflake-db-host] != ''",
                type: "string",
                kind: "hidden",
              },
              {
                id: "wr-snowflake-db-database",
                name: "Database Name",
                description: "Insert name of your database.",
                type: "string",
                kind: "input",
                default: "DatabaseName",
                showif: "[wr-snowflake-db-host] != ''",
              },
              {
                id: "wr-snowflake-db-schema",
                name: "Schema",
                description: "Insert database schema.",
                type: "string",
                kind: "input",
                default: "Schema",
                showif: "[wr-snowflake-db-host] != ''",
              },
              {
                id: "wr-snowflake-db-warehouse",
                name: "Warehouse",
                description: "Insert database warehouse.",
                type: "string",
                kind: "input",
                default: "Warehouse",
                showif: "[wr-snowflake-db-host] != ''",
              },
            ]
          },
        ]
      }






      ],
    },
  ],
}
