view: service_category {
  sql_table_name: dbo.ServiceCategory ;;

  dimension: service_category_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.service_category_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  measure: count {
    type: count
    drill_fields: [service_category_id, services.count]
  }
}
