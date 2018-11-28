view: users_defects {
  sql_table_name: dbo.UsersDefects ;;

  dimension: admin {
    label: "Is Admin"
    type: string
    sql: case when ISNULL(${TABLE}.admin,0) = 0 then 'No' Else 'Yes' End ;;
  }

  dimension: approved {
    label: "Is Approved"
    type: string
    sql: case when ISNULL(${TABLE}.approved,0) = 0 then 'No' else 'Yes' End ;;
  }

  dimension: company {
    label: "Company"
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: company_id {
    label: "Company ID"
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: database_id {
    label: "Database ID"
    type: number
    sql: ${TABLE}.database_id ;;
  }

  dimension: domain {
    label: "Domain"
    type: string
    sql: ${TABLE}.domain ;;
  }

  dimension: email {
    label: "Email"
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    label: "First Name"
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: internal_employee {
    label: "Is Internal Employee"
    type: string
    sql: case when ISNULL(${TABLE}.internal_employee,0) = 0 then 'No' else 'Yes' end ;;
  }

  dimension: last_name {
    label: "Last Name"
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: management {
    label: "Is Management"
    type: string
    sql: case when ISNULL(${TABLE}.management,0) = 0 then 'No' else 'Yes' end ;;
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
    label: "Phone"
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: product_id {
    label: "Product ID"
    type: number
    sql: ${TABLE}.product_id ;;
  }

  dimension: team_id {
    label: "Team ID"
    type: number
    sql: ${TABLE}.team_id ;;
  }

  dimension: ttuser_id {
    label: "TT User ID"
    type: number
    sql: ${TABLE}.ttuser_id ;;
  }

  dimension: ttuser_name {
    label: "TT User Name"
    type: string
    sql: ${TABLE}.ttuser_name ;;
  }

  dimension: username {
    label: "User Name"
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: users_id {
    primary_key: yes
    label: "User ID"
    type: number
    # hidden: yes
    sql: ${TABLE}.users_id ;;
  }

  dimension: vendor {
    label: "Vendor"
    type: string
    sql: ${TABLE}.vendor ;;
  }

  dimension: view_only {
    label: "Is View Only"
    type: string
    sql: case when ISNULL(${TABLE}.view_only,0) = 0 then 'No' else 'Yes' End ;;
  }

  measure: count {
    label: "Count"
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
