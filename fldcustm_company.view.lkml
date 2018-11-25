view: fldcustm_companyname {
  sql_table_name: dbo.FLDCUSTM ;;

  dimension: descriptor {
    label: "Discriptor"
    type: string
    sql: ${TABLE}.Descriptor ;;
  }

  dimension: field_order {
    label: "Field Order"
    type: number
    sql: ${TABLE}.FieldOrder ;;
  }

  dimension: id_pulist {
    label: "PU List ID"
    type: number
    sql: ${TABLE}.idPUList ;;
  }

  dimension: id_record {
    primary_key: yes
    label: "Record ID"
    type: number
    sql: ${TABLE}.idRecord ;;
  }

  dimension: project_id {
    hidden: no
    type: number
    sql: ${TABLE}.ProjectID ;;
  }

  measure: count {
    label: "Count"
    type: count
    drill_fields: []
  }
}
