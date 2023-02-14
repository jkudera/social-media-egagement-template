[1mdiff --git a/social-media-engagement-template/v0/src/inputs.jsonnet b/social-media-engagement-template/v0/src/inputs.jsonnet[m
[1mindex 02250ac..d8983cd 100644[m
[1m--- a/social-media-engagement-template/v0/src/inputs.jsonnet[m
[1m+++ b/social-media-engagement-template/v0/src/inputs.jsonnet[m
[36m@@ -160,7 +160,7 @@[m
           name: "Twitter Page",[m
           description: "Import data from Twitter Page",[m
           dialogName: "Twitter Pages Source", [m
[31m-          dialogDescription: "This source component imports posts engagement and page engagement from your Twitter account",[m
[32m+[m[32m          dialogDescription: "This source component imports all posts engagement and page engagement (since this day) from your Twitter account",[m
           inputs: [[m
             {[m
               id:          "oauth-twitter",[m
[36m@@ -194,7 +194,7 @@[m
           name: "Youtube Channel",[m
           description: "Import data from Youtube Channel",[m
           dialogName: "Youtube Channel Source", [m
[31m-          dialogDescription: "This source component imports posts (videos) engagement from your Youtube Channel",[m
[32m+[m[32m          dialogDescription: "This source component imports all posts (videos) engagement from your Youtube Channel",[m
           inputs: [[m
             {[m
               id:          "oauth-youtube",[m
[1mdiff --git a/social-media-engagement-template/v0/src/other/keboola.orchestrator/social-media-engagement/phases/004-step-4/001-keboola-snowflake-transformation-func-config-id-transformation-in-social-media-engagement-linkedin/task.jsonnet b/social-media-engagement-template/v0/src/other/keboola.orchestrator/social-media-engagement/phases/004-step-4/001-keboola-snowflake-transformation-func-config-id-transformation-in-social-media-engagement-linkedin/task.jsonnet[m
[1mindex 2ded070..d9569b9 100644[m
[1m--- a/social-media-engagement-template/v0/src/other/keboola.orchestrator/social-media-engagement/phases/004-step-4/001-keboola-snowflake-transformation-func-config-id-transformation-in-social-media-engagement-linkedin/task.jsonnet[m
[1m+++ b/social-media-engagement-template/v0/src/other/keboola.orchestrator/social-media-engagement/phases/004-step-4/001-keboola-snowflake-transformation-func-config-id-transformation-in-social-media-engagement-linkedin/task.jsonnet[m
[36m@@ -1,9 +1,9 @@[m
 {[m
   name: "keboola.snowflake-transformation-" + ConfigId("transformation-in-social-media-engagement-linkedin"),[m
[31m-  enabled: false,[m
[32m+[m[32m  enabled: true,[m
   task: {[m
     mode: "run",[m
     configPath: "transformation/keboola.snowflake-transformation/transformation-in-social-media-engagement-linkedin",[m
   },[m
[31m-  continueOnFailure: true,[m
[32m+[m[32m  continueOnFailure: false,[m
 }[m
