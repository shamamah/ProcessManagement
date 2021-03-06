view: company {
  sql_table_name: dbo.Company ;;

  dimension: company_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: added_by_users_id {
    hidden: yes
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

  dimension: company_name {
    hidden: yes
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: company_number {
    hidden: yes
    type: string
    sql: ${TABLE}.company_number ;;
  }

  dimension: company_name_number {
    label: "Company Number/Name"
    type: string
    sql: ${company_number} + ' - ' + ${company_name} ;;
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
    drill_fields: [company_id, company_name, contract.count, time_log.count, users_defects.count]
  }
}
