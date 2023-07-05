resource "newrelic_alert_policy" "newpolicy1" {
  name = "newpolicy1"
}

resource "newrelic_nrql_alert_condition" "newpolicy1" {
  for_each                     = var.policycreation
  account_id                   = each.value.account_id
  type                         = each.value.type
  name                         = each.value.name
  description                  = each.value.description
  enabled                      = each.value.enabled
  violation_time_limit_seconds = each.value.violation_time_limit_seconds
  runbook_url                  = each.value.runbook_url
  aggregation_method           = each.value.aggregation_method
  aggregation_delay            = each.value.aggregation_delay
  slide_by                     = each.value.slide_by
  baseline_direction           = each.value.baseline_direction
  policy_id                    = newrelic_alert_policy.newpolicy1.id

  nrql {
    query = each.value.query
  }

  critical {
    operator              = each.value.operator
    threshold             = each.value.threshold
    threshold_duration    = each.value.threshold_duration
    threshold_occurrences = each.value.threshold_occurrences
  }
}