view: custmval {
  sql_table_name: dbo.CUSTMVAL ;;

  dimension: cust_value {
    type: string
    sql: ${TABLE}.CustValue ;;
  }

  dimension: id_cust_rec {
    type: number
    sql: ${TABLE}.idCustRec ;;
  }

  dimension: id_record {
    type: number
    sql: ${TABLE}.idRecord ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.ParentID ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
