view: root_cause_types {
  sql_table_name: dbo.RootCauseTypes ;;

  dimension: rootcausetype {
    label: "Root Cause Type"
    hidden: no
    type: string
    sql: ${TABLE}.rootcausetype ;;
  }

  dimension: rootcausetype_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.rootcausetype_id ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
