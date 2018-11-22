view: users {
  sql_table_name: dbo.Users ;;

  dimension: users_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.users_id ;;
  }

  dimension: accrue_time {
    type: string
    sql: ${TABLE}.accrue_time ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.active ;;
  }

  dimension_group: birthday {
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
    sql: ${TABLE}.birthday ;;
  }

  dimension: calendar_color {
    type: string
    sql: ${TABLE}.calendar_color ;;
  }

  dimension: create_task {
    type: string
    sql: ${TABLE}.create_task ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}.department_id ;;
  }

  dimension: employee_number {
    type: number
    sql: ${TABLE}.employee_number ;;
  }

  dimension: fullname {
    type: string
    sql: ${TABLE}.fullname ;;
  }

  dimension: grouptype_id {
    type: number
    sql: ${TABLE}.grouptype_id ;;
  }

  dimension_group: hire {
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
    sql: ${TABLE}.hire_date ;;
  }

  dimension: hr_department_id {
    type: number
    sql: ${TABLE}.hr_department_id ;;
  }

  dimension: individual {
    type: string
    sql: ${TABLE}.individual ;;
  }

  dimension: istimeliteadmin {
    type: string
    sql: ${TABLE}.istimeliteadmin ;;
  }

  dimension: job_id {
    type: number
    sql: ${TABLE}.job_id ;;
  }

  dimension: manager_id {
    type: number
    sql: ${TABLE}.manager_id ;;
  }

  dimension: office_id {
    type: number
    sql: ${TABLE}.office_id ;;
  }

  dimension: organization_id {
    type: number
    sql: ${TABLE}.organization_id ;;
  }

  dimension: reminder_hours {
    type: number
    sql: ${TABLE}.reminder_hours ;;
  }

  dimension: reporting_capabilities {
    type: string
    sql: ${TABLE}.reporting_capabilities ;;
  }

  dimension: show_direct_only {
    type: string
    sql: ${TABLE}.show_direct_only ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: team_lead_id {
    type: number
    sql: ${TABLE}.team_lead_id ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  dimension_group: vacationstart {
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
    sql: ${TABLE}.vacationstart_date ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      users_id,
      fullname,
      user_name,
      defect_root_causes.count,
      time_log.count,
      users_defects.count
    ]
  }
}
