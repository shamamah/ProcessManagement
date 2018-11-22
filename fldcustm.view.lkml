view: fldcustm {
  sql_table_name: dbo.FLDCUSTM ;;

  dimension: descriptor {
    type: string
    sql: ${TABLE}.Descriptor ;;
  }

  dimension: field_order {
    type: number
    sql: ${TABLE}.FieldOrder ;;
  }

  dimension: id_pulist {
    type: number
    sql: ${TABLE}.idPUList ;;
  }

  dimension: id_record {
    type: number
    sql: ${TABLE}.idRecord ;;
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
