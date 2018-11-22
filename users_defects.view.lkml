view: users_defects {
  sql_table_name: dbo.UsersDefects ;;

  dimension: admin {
    hidden: yes
    type: string
    sql: ${TABLE}.admin ;;
  }

  dimension: approved {
    hidden: yes
    type: string
    sql: ${TABLE}.approved ;;
  }

  dimension: company {
    hidden: yes
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: company_id {
    hidden: yes
    type: number
    # hidden: yes
    sql: ${TABLE}.company_id ;;
  }

  dimension: database_id {
    hidden: yes
    type: number
    sql: ${TABLE}.database_id ;;
  }

  dimension: domain {
    hidden: yes
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: email {
    hidden: yes
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    hidden: yes
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: internal_employee {
    hidden: yes
    type: string
    sql: ${TABLE}.internal_employee ;;
  }

  dimension: last_name {
    hidden: yes
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: management {
    hidden: yes
    type: string
    sql: ${TABLE}.management ;;
  }

  dimension: name_style {
    hidden: yes
    type: number
    sql: ${TABLE}.name_style ;;
  }

  dimension: password {
    hidden: yes
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: phone {
    hidden: yes
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: product_id {
    hidden: yes
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: team_id {
    hidden: yes
    type: number
    sql: ${TABLE}.team_id ;;
  }

  dimension: ttuser_id {
    hidden: yes
    type: number
    sql: ${TABLE}.ttuser_id ;;
  }

  dimension: ttuser_name {
    hidden: yes
    type: string
    sql: ${TABLE}.ttuser_name ;;
  }

  dimension: username {
    label: "User Name"
    hidden: no
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: users_id {
    primary_key: yes
    hidden: yes
    type: number
    # hidden: yes
    sql: ${TABLE}.users_id ;;
  }

  dimension: vendor {
    hidden: yes
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: view_only {
    hidden: yes
    type: string
    sql: ${TABLE}.view_only ;;
  }

  measure: count {
    hidden: yes
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
