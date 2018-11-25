view: custmval_servicetype {
  sql_table_name: dbo.CUSTMVAL ;;

  dimension: cust_value {
    label: "Cust Value"
    type: number
    sql: CAST(CAST(${TABLE}.CustValue AS Varchar(max)) AS INT) ;;
  }

  dimension: id_cust_rec {
    hidden: yes
    type: number
    sql: ${TABLE}.idCustRec ;;
  }

  dimension: id_record {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.idRecord ;;
  }

  dimension: parent_id {
    label: "Parent_ID"
    hidden: no
    type: number
    sql: ${TABLE}.ParentID ;;
  }

  dimension: project_id {
    hidden: yes
    type: number
    sql: ${TABLE}.ProjectID ;;
  }

  # measure: count {
  #   type: count
  #   drill_fields: []
  # }
}
