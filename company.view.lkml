view: company {
  sql_table_name: dbo.Company ;;

  dimension: company_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: added_by_users_id {
    type: number
    sql: ${TABLE}.added_by_users_id ;;
  }

  dimension_group: added {
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

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: company_number {
    type: string
    sql: ${TABLE}.company_number ;;
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

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: statuscode_id {
    type: number
    sql: ${TABLE}.statuscode_id ;;
  }

  measure: count {
    type: count
    drill_fields: [company_id, company_name, contract.count, time_log.count, users_defects.count]
  }
}
