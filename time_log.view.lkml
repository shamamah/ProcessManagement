view: time_log {
  sql_table_name: dbo.TimeLog ;;

  dimension: time_log_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.time_log_id ;;
  }

  dimension_group: acct {
    label: "Acct"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.acct_date ;;
  }

  dimension: added_by_users_id {
    label: "Added User ID"
    type: number
    sql: ${TABLE}.added_by_users_id ;;
  }

  dimension_group: added {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.added_date ;;
  }

  dimension: assigned_to_user_id {
    label: "Assigned User ID"
    type: number
    sql: ${TABLE}.assigned_to_user_id ;;
  }

  dimension: billingtype_id {
    hidden: yes
    type: number
    sql: ${TABLE}.billingtype_id ;;
  }

  dimension: changerequeststatus_id {
    type: number
    sql: ${TABLE}.changerequeststatus_id ;;
  }

  dimension: changerequesttype_id {
    type: number
    sql: ${TABLE}.changerequesttype_id ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension: contract_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.contract_id ;;
  }

  dimension_group: date_rolled {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_rolled ;;
  }

  dimension: dim_duration {
    hidden: yes
    label: "Duration (Min)"
    type: number
    sql: ${TABLE}.duration ;;
  }

  dimension: external_task_number {
    type: number
    sql: ${TABLE}.external_task_number ;;
  }

  dimension: is_unplanned {
    type: string
    sql: ${TABLE}.is_unplanned ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: last_modified_users_id {
    type: number
    sql: ${TABLE}.last_modified_users_id ;;
  }

  dimension: percent_complete {
    type: number
    sql: ${TABLE}.percent_complete ;;
  }

  dimension: saved_with_overridden_values {
    type: string
    sql: ${TABLE}.saved_with_overridden_values ;;
  }

  dimension_group: service {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.service_date ;;
  }

  dimension: services_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.services_id ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: statuscode_id {
    type: number
    sql: ${TABLE}.statuscode_id ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.task_id ;;
  }

  dimension: timelogdefaulttype_id {
    type: number
    sql: ${TABLE}.timelogdefaulttype_id ;;
  }

  dimension: timelogentrytype_id {
    type: number
    sql: ${TABLE}.timelogentrytype_id ;;
  }

  dimension: tt_number {
    type: number
    sql: ${TABLE}.tt_number ;;
  }

  dimension: users_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.users_id ;;
  }

  dimension: waived_comment {
    type: string
    sql: ${TABLE}.waived_comment ;;
  }

  dimension: workitem_num {
    type: number
    sql: ${TABLE}.workitem_num ;;
  }

  dimension: worktype_id {
    type: number
    sql: ${TABLE}.worktype_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: duration {
    label: "Duration (Hrs)"
    type: sum
    value_format_name: decimal_2
    sql: ${dim_duration} / 60. ;;
    drill_fields: [duration*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      time_log_id,
      services.services_id,
      contract.contract_id,
      company.company_id,
      company.company_name,
      users.users_id,
      users.fullname,
      users.user_name
    ]
  }

  set: duration {
    fields: [
      company.company_name,
      service_category.description,
      users.fullname,
      duration,
    ]
  }
}
