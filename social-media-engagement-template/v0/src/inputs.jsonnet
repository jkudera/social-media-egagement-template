{
  stepsGroups: [
    {
      description: "Provide credentials for the source components.",
      required: "atLeastOne",
      steps: [
        
          
        {
          icon: "component:keboola.ex-facebook-ads",
          name: "Facebook Ads",
          description: "Import data from Facebook Ads",
          dialogName: "Facebook Ads Source", 
          dialogDescription: "This source component imports your Facebook Ads Manager data, such as campaigns, adsets, ads insights, and more.",
          inputs: [
              {
                  id: "ex-facebook-queries-2-query-fields",
                  name: "Queries Query Fields",
                  description: "facebook",
                  type: "string",
                  kind: "input",
                  default: "insights.since(90 days ago).until(today).metric(page_views_total, page_fan_removes, page_fan_adds, page_fans, page_negative_feedback, page_consumptions, page_engaged_users, page_impressions)",
                },
          ]
        },
        {
          icon: "component:leochan.ex-linkedin",
          name: "LinkedIn Ads",
          description: "Import data from LinkedIn Page",
          dialogName: "LinkedIn Pages Source", 
          dialogDescription: "This source component imports data from LinkedIn Page",
          inputs: [
              {
                  id: "ex-linkedin-pages-sync-options-date-from",
                  name: "Sync options Date from",
                  description: "linkedin",
                  type: "string",
                  kind: "input",
                  default: "12 months ago",
                },
                {
                  id: "ex-linkedin-pages-sync-options-date-to",
                  name: "Sync options Date to",
                  description: "linkedin",
                  type: "string",
                  kind: "input",
                  default: "now",
                },
          ]
        },
        {
          icon: "component:keboola.ex-google-ads",
          name: "Instagram",
          description: "Import data from Instagram",
          dialogName: "Instagram", 
          dialogDescription: "This source component imports data from Instagram",
          inputs: [
              {
                  id: "ex-instagram-queries-2-query-fields",
                  name: "Queries Query Fields",
                  description: "faceboook",
                  type: "string",
                  kind: "input",
                  default: "insights.since(30 days ago).period(day).metric(reach,impressions,follower_count,email_contacts,text_message_clicks,get_directions_clicks,phone_call_clicks,website_clicks,profile_views)",
                },
          ]
        },
          
        
      ],
    },{   
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
                id: "wr-snowflake-blob-storage-db-password",
                name: "Db Password",
                description: "",
                type: "string",
                kind: "hidden",
              },
              {
                id: "wr-snowflake-blob-storage-db-database",
                name: "Db Database",
                description: "",
                type: "string",
                kind: "input",
                default: "KEBOOLA_10367",
              },
              {
                id: "wr-snowflake-blob-storage-db-driver",
                name: "Db Driver",
                description: "",
                type: "string",
                kind: "input",
                default: "snowflake",
              },
              {
                id: "wr-snowflake-blob-storage-db-host",
                name: "Db Host",
                description: "",
                type: "string",
                kind: "input",
                default: "keboola.west-europe.azure.snowflakecomputing.com",
              },
              {
                id: "wr-snowflake-blob-storage-db-port",
                name: "Db Port",
                description: "",
                type: "string",
                kind: "input",
                default: "443",
              },
              {
                id: "wr-snowflake-blob-storage-db-schema",
                name: "Db Schema",
                description: "",
                type: "string",
                kind: "input",
                default: "WORKSPACE_34417172",
              },
              {
                id: "wr-snowflake-blob-storage-db-user",
                name: "Db User",
                description: "",
                type: "string",
                kind: "input",
                default: "KEBOOLA_WORKSPACE_34417172",
              },
              {
                id: "wr-snowflake-blob-storage-db-warehouse",
                name: "Db Warehouse",
                description: "",
                type: "string",
                kind: "input",
                default: "KEBOOLA_PROD_SMALL",
              },
          ]
        },
      ]
    }
  ],
}
