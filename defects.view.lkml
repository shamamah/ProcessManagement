view: defects {
  sql_table_name: dbo.DEFECTS ;;

  dimension: add_locat {
    hidden: yes
    type: number
    sql: ${TABLE}.AddLocat ;;
  }

  dimension: cur_asg_to {
    hidden: yes
    type: string
    sql: ${TABLE}.CurAsgTo ;;
  }

  dimension_group: date_create {
    label: "Defect Created On"
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
    sql: ${TABLE}.dateCreate ;;
  }

  dimension_group: date_enter {
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
    sql: ${TABLE}.dateEnter ;;
  }

  dimension_group: date_modify {
    label: "Defect Modified On"
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
    sql: ${TABLE}.dateModify ;;
  }

  dimension: defect_num {
    label: "TT Number (DefectNum)"
    hidden: no
    type: string
    sql: ${TABLE}.DefectNum ;;
  }

  dimension: id_compon {
    hidden: yes
    type: number
    sql: ${TABLE}.idCompon ;;
  }

  dimension: id_create_by {
    hidden: yes
    type: number
    sql: ${TABLE}.idCreateBy ;;
  }

  dimension: id_disposit {
    hidden: yes
    type: number
    sql: ${TABLE}.idDisposit ;;
  }

  dimension: id_enter_by {
    label: "Enter By (ID)"
    hidden: no
    type: number
    sql: ${TABLE}.idEnterBy ;;
  }

  dimension: id_modify_by {
    hidden: yes
    type: number
    sql: ${TABLE}.idModifyBy ;;
  }

  dimension: id_priority {
    label: "Is Priority"
    hidden: no
    type: number
    sql: ${TABLE}.idPriority ;;
  }

  dimension: id_product {
    label: "Is Product"
    hidden: no
    type: number
    sql: ${TABLE}.idProduct ;;
  }

  dimension: id_record {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.idRecord ;;
  }

  dimension: id_severity {
    label: "Severity ID"
    hidden: no
    type: number
    sql: ${TABLE}.idSeverity ;;
  }

  dimension: id_ticket {
    hidden: yes
    type: number
    sql: ${TABLE}.idTicket ;;
  }

  dimension: id_type {
    label: "Type (ID)"
    hidden: no
    type: number
    sql: ${TABLE}.idType ;;
  }

  dimension: init_status {
    hidden: yes
    type: number
    sql: ${TABLE}.InitStatus ;;
  }

  dimension: notify {
    hidden: yes
    type: string
    sql: ${TABLE}.Notify ;;
  }

  dimension: project_id {
    hidden: yes
    type: number
    sql: ${TABLE}.ProjectID ;;
  }

  dimension: reference {
    hidden: yes
    type: string
    sql: ${TABLE}.Reference ;;
  }

  dimension: status {
    label: "Status (ID)"
    hidden: no
    type: number
    sql: ${TABLE}.Status ;;
  }

  dimension: summary {
    label: "Summary"
    hidden: no
    type: string
    sql: ${TABLE}.Summary ;;
  }

  dimension: workaround {
    hidden: yes
    type: string
    sql: ${TABLE}.Workaround ;;
  }

  measure: count {
    hidden: no
    type: count
    drill_fields: []
  }
}
