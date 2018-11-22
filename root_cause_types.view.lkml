view: root_cause_types {
  sql_table_name: dbo.RootCauseTypes ;;

  dimension: rootcausetype {
    type: string
    sql: ${TABLE}.rootcausetype ;;
  }

  dimension: rootcausetype_id {
    type: number
    sql: ${TABLE}.rootcausetype_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
