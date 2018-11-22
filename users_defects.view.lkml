view: users_defects {
  sql_table_name: dbo.UsersDefects ;;

  dimension: admin {
    type: string
    sql: ${TABLE}.admin ;;
  }

  dimension: approved {
    type: string
    sql: ${TABLE}.approved ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension: database_id {
    type: number
    sql: ${TABLE}.database_id ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: internal_employee {
    type: string
    sql: ${TABLE}.internal_employee ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: management {
    type: string
    sql: ${TABLE}.management ;;
  }

  dimension: name_style {
    type: number
    sql: ${TABLE}.name_style ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: team_id {
    type: number
    sql: ${TABLE}.team_id ;;
  }

  dimension: ttuser_id {
    type: number
    sql: ${TABLE}.ttuser_id ;;
  }

  dimension: ttuser_name {
    type: string
    sql: ${TABLE}.ttuser_name ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: users_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.users_id ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: view_only {
    type: string
    sql: ${TABLE}.view_only ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      username,
      first_name,
      last_name,
      ttuser_name,
      users.users_id,
      users.fullname,
      users.user_name,
      company.company_id,
      company.company_name
    ]
  }
}
