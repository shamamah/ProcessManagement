view: status_code {
  sql_table_name: dbo.StatusCode ;;

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

  dimension: dscr {
    label: "Status Description"
    type: string
    sql: ${TABLE}.dscr ;;
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

  dimension: statuscode_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.statuscode_id ;;
  }

#   measure: count {
#     type: count
#     drill_fields: []
#   }
}
