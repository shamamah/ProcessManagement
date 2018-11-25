view: defect_root_causes {
  sql_table_name: dbo.DefectRootCauses ;;

  dimension_group: date_added {
    label: "Root Cause"
    hidden: no
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
    sql: ${TABLE}.date_modified ;;
  }

  dimension: defect_number {
    hidden: yes
    type: number
    sql: ${TABLE}.defect_number ;;
  }

  dimension: rootcause_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.rootcause_id ;;
  }

  dimension: rootcause_notes {
    label: "Root Cause Notes"
    hidden: no
    type: string
    sql: ISNULL(${TABLE}.rootcause_notes, '') ;;
  }

  dimension: rootcausetype_id {
    hidden: yes
    type: number
    sql: ${TABLE}.rootcausetype_id ;;
  }

  dimension: user_id {
    hidden: yes
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [users.users_id, users.fullname, users.user_name]
  }
}
