view: risk_detail_transaction_map {
  sql_table_name: dbo.RiskDetail_Transaction_Map ;;

  dimension: riskdetail_id {
    type: number
    sql: ${TABLE}.riskdetail_id ;;
  }

  dimension: transaction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.transaction_id ;;
  }

  measure: count {
    type: count
    drill_fields: [transactions.transaction_id, transactions.insured_first_name, transactions.insured_last_name]
  }
}
