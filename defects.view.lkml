view: defects {
  sql_table_name: dbo.DEFECTS ;;

  dimension: add_locat {
    type: number
    sql: ${TABLE}.AddLocat ;;
  }

  dimension: cur_asg_to {
    type: string
    sql: ${TABLE}.CurAsgTo ;;
  }

  dimension_group: date_create {
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
    sql: ${TABLE}.dateCreate ;;
  }

  dimension_group: date_enter {
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
    sql: ${TABLE}.dateEnter ;;
  }

  dimension_group: date_modify {
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
    sql: ${TABLE}.dateModify ;;
  }

  dimension: defect_num {
    type: number
    sql: ${TABLE}.DefectNum ;;
  }

  dimension: id_compon {
    type: number
    sql: ${TABLE}.idCompon ;;
  }

  dimension: id_create_by {
    type: number
    sql: ${TABLE}.idCreateBy ;;
  }

  dimension: id_disposit {
    type: number
    sql: ${TABLE}.idDisposit ;;
  }

  dimension: id_enter_by {
    type: number
    sql: ${TABLE}.idEnterBy ;;
  }

  dimension: id_modify_by {
    type: number
    sql: ${TABLE}.idModifyBy ;;
  }

  dimension: id_priority {
    type: number
    sql: ${TABLE}.idPriority ;;
  }

  dimension: id_product {
    type: number
    sql: ${TABLE}.idProduct ;;
  }

  dimension: id_record {
    type: number
    sql: ${TABLE}.idRecord ;;
  }

  dimension: id_severity {
    type: number
    sql: ${TABLE}.idSeverity ;;
  }

  dimension: id_ticket {
    type: number
    sql: ${TABLE}.idTicket ;;
  }

  dimension: id_type {
    type: number
    sql: ${TABLE}.idType ;;
  }

  dimension: init_status {
    type: number
    sql: ${TABLE}.InitStatus ;;
  }

  dimension: notify {
    type: string
    sql: ${TABLE}.Notify ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.Reference ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }

  dimension: summary {
    type: string
    sql: ${TABLE}.Summary ;;
  }

  dimension: workaround {
    type: string
    sql: ${TABLE}.Workaround ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
