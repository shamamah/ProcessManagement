connection: "kaboodle_hazard"

include: "*.view"

explore: defects {
  label: "Defect Analytics"
  view_label: "Defect"
  group_label: "Defect Analytics"  #Grouping in the EXPLORE Dropdown
  from: defects
  view_name: defects
  sql_table_name: dbo.defects ;;

  join: defect_root_causes {
    view_label: "Defect Root Cause"
    relationship: many_to_one
    type: left_outer
    sql_on: ${defects.defect_num} = ${defect_root_causes.defect_number} ;;
  }

  join: root_cause_types {
    view_label: "Root Cause Type"
    relationship: many_to_one
    type: left_outer
    sql_on: ${defect_root_causes.rootcausetype_id} = ${root_cause_types.rootcausetype_id} ;;
  }

  join: users_defects {
    view_label: "Users"
    relationship: many_to_one
    type: left_outer
    sql_on: ${users_defects.users_id} = ${defect_root_causes.user_id} ;;
  }

}
