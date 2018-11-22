view: contract {
  sql_table_name: dbo.Contract ;;

  dimension: contract_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.contract_id ;;
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

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
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

  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: state_id {
    type: number
    sql: ${TABLE}.state_id ;;
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
    drill_fields: [contract_id, company.company_id, company.company_name, time_log.count]
  }
}
