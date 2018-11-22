view: defect_root_causes {
  sql_table_name: dbo.DefectRootCauses ;;

  dimension_group: date_added {
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
    sql: ${TABLE}.date_added ;;
  }

  dimension_group: date_modified {
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
    sql: ${TABLE}.date_modified ;;
  }

  dimension: defect_number {
    type: number
    sql: ${TABLE}.defect_number ;;
  }

  dimension: rootcause_id {
    type: number
    sql: ${TABLE}.rootcause_id ;;
  }

  dimension: rootcause_notes {
    type: string
    sql: ${TABLE}.rootcause_notes ;;
  }

  dimension: rootcausetype_id {
    type: number
    sql: ${TABLE}.rootcausetype_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [users.users_id, users.fullname, users.user_name]
  }
}
