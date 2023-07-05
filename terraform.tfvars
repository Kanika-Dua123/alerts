policycreation = {
  "alertone" = {
    "type"                         = "baseline"
    "account_id"                   = 3930395
    "name"                         = "Alertcreation1"
    "description"                  = "Alert 1"
    "enabled"                      = true
    "violation_time_limit_seconds" = 3600
    "query"                        = "SELECT count(*) FROM Transaction "
    "operator"                     = "above"
    "threshold"                    = 8.5
    "threshold_duration"           = 200
    "threshold_occurrences"        = "all"
    "aggregation_method"           = "event_flow"
    "aggregation_delay"            = 120
    "slide_by"                     = 30
    "baseline_direction"           = "upper_only"
    "runbook_url"                  = "google.com"


  },

  "alerttwo" = {
    "type"                         = "baseline"
    "account_id"                   = 3930395
    "name"                         = "Alertcreation2"
    "description"                  = "Alert2"
    "enabled"                      = true
    "violation_time_limit_seconds" = 3600
    "query"                        = "SELECT count(*) FROM PageView where appName"
    "operator"                     = "above"
    "threshold"                    = 5.0
    "threshold_duration"           = 100
    "threshold_occurrences"        = "all"
    "slide_by"                     = 10
    "baseline_direction"           = "upper_only"
    "query"                        = "SELECT count(*) FROM PageView FACET appName"
    "operator"                     = "above"
    "runbook_url"                  = "google.com"
    "aggregation_delay"            = 120
    "aggregation_method"           = "event_flow"
 } 
}
