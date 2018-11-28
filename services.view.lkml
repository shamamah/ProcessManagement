view: services {
  sql_table_name: dbo.Services ;;

  dimension: services_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.services_id ;;
  }

  dimension: added_by_users_id {
    hidden: yes
    type: number
    sql: ${TABLE}.added_by_users_id ;;
  }

  dimension_group: added {
    label: "Added"
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

  dimension: code {
    label: "Service Code"
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: description {
    label: "Service Description"
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: explanation {
    label: "Explanation"
    type: string
    sql: ${TABLE}.explanation ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: last_modified_users_id {
    hidden: yes
    type: number
    sql: ${TABLE}.last_modified_users_id ;;
  }

  dimension: service_category_id {
    hidden: yes
    type: number
    sql: ${TABLE}.service_category_id ;;
  }

  dimension: status {
    label: "Status"
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: statuscode_id {
    hidden: yes
    type: number
    sql: ${TABLE}.statuscode_id ;;
  }

  measure: count {
    type: count
    drill_fields: [services_id, service_category.service_category_id, time_log.count]
  }
}
