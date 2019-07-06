# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_06_142839) do

  create_table "accessories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active"
    t.boolean "hard_disk"
    t.boolean "network_card"
    t.integer "server_record_id"
    t.integer "client_record_id"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string "address"
    t.integer "user_id"
    t.boolean "active"
    t.integer "person_id"
    t.date "from"
    t.date "to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bankaccounts", force: :cascade do |t|
    t.integer "financialinstitution_id"
    t.string "account_number"
    t.string "sort_code"
    t.string "iban"
    t.string "bic"
    t.integer "person_id"
    t.string "account_code"
    t.string "account_name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bankcards", force: :cascade do |t|
    t.integer "bankaccount_id"
    t.integer "person_id"
    t.string "card_number"
    t.date "expiry_date"
    t.string "security_code"
    t.boolean "active"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "budgets", force: :cascade do |t|
    t.integer "user_id"
    t.string "month"
    t.string "year"
    t.date "budget_date"
    t.string "name"
    t.decimal "balance"
    t.string "budget_number"
    t.integer "reference_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cashboxes", force: :cascade do |t|
    t.string "name"
    t.date "accounting_date"
    t.boolean "active"
    t.string "month"
    t.string "year"
    t.text "notes"
    t.decimal "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cashflow_recons", force: :cascade do |t|
    t.integer "cashflow_id"
    t.integer "user_id"
    t.text "error_details"
    t.text "reconciliation_rationale"
    t.decimal "correction_amount"
    t.string "authorised_by"
    t.date "authorisation_date"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cashflows", force: :cascade do |t|
    t.string "month"
    t.string "year"
    t.date "accounting_date"
    t.string "name"
    t.integer "user_id"
    t.decimal "balance"
    t.string "cashflow_number"
    t.integer "reference_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_records", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "virtual"
    t.integer "operating_system_id"
    t.integer "person_id"
    t.date "deployment_date"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "inventory_id"
    t.integer "user_id"
    t.text "commentary"
    t.integer "person_id"
    t.integer "cashflow_id"
    t.integer "saving_id"
    t.integer "delivery_id"
    t.integer "budget_id"
    t.integer "issue_management_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "corrective_actions", force: :cascade do |t|
    t.string "title"
    t.integer "issue_management_id"
    t.date "target_completion_date"
    t.date "actual_completion_date"
    t.string "description"
    t.integer "person_id"
    t.integer "user_id"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.date "delivery_date"
    t.integer "user_id"
    t.string "receiver"
    t.integer "person_id"
    t.string "delivery_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deployment_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string "email"
    t.integer "user_id"
    t.boolean "active"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employmentreferences", force: :cascade do |t|
    t.string "referee_name"
    t.string "referee_telephone"
    t.string "referee_email"
    t.text "referee_details"
    t.integer "person_id"
    t.boolean "referee_active"
    t.integer "user_id"
    t.integer "employment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employments", force: :cascade do |t|
    t.string "company"
    t.string "position"
    t.date "from"
    t.date "to"
    t.text "terminationreason"
    t.boolean "actve"
    t.integer "person_id"
    t.integer "user_id"
    t.string "company_address"
    t.string "company_telephone"
    t.string "company_email"
    t.text "company_details"
    t.text "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string "owner"
    t.decimal "amount"
    t.string "expense_type"
    t.integer "user_id"
    t.integer "budget_id"
    t.text "details"
    t.string "month"
    t.string "year"
    t.integer "person_id"
    t.integer "outflowtype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "financialinstitutions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "address"
    t.string "telephone"
    t.string "email"
    t.float "longitude"
    t.float "latitude"
    t.string "institution_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "functional_levels", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "herga_applications", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "dev_framework"
    t.text "framework_description"
    t.string "framework_version"
    t.integer "deployment_status_id"
    t.date "deployment_date"
    t.date "decomissioned_date"
    t.integer "person_id"
    t.integer "server_record_id"
    t.boolean "inhouse_build"
    t.boolean "third_party_build"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.string "owner"
    t.decimal "amount"
    t.text "details"
    t.integer "user_id"
    t.integer "budget_id"
    t.string "income_type"
    t.string "year"
    t.string "month"
    t.integer "person_id"
    t.integer "inflowtype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inflows", force: :cascade do |t|
    t.decimal "amount"
    t.text "details"
    t.integer "user_id"
    t.integer "cashflow_id"
    t.string "year"
    t.string "month"
    t.integer "person_id"
    t.integer "inflowtype_id"
    t.date "date_posted"
    t.text "rationale"
    t.integer "bankaccount_id"
    t.boolean "follow_up"
    t.string "picture"
    t.string "attachment"
    t.string "flowtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inflowtypes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "system_item"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string "department"
    t.boolean "active"
    t.integer "user_id"
    t.date "period_from"
    t.integer "department_id"
    t.string "location"
    t.string "inventory_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "issue_managements", force: :cascade do |t|
    t.string "issue_title"
    t.text "description"
    t.string "completion_rate"
    t.integer "person_id"
    t.integer "user_id"
    t.date "completion_target_date"
    t.date "completion_actual_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "inventory_id"
    t.string "item"
    t.text "description"
    t.decimal "quantity"
    t.decimal "value"
    t.boolean "virtual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ledgers", force: :cascade do |t|
    t.string "month"
    t.string "year"
    t.date "ledger_date"
    t.string "name"
    t.integer "user_id"
    t.decimal "annual_budget_bal"
    t.decimal "annual_cashflow_bal"
    t.decimal "annual_total_income"
    t.decimal "annual_total_expenditure"
    t.string "ledger_number"
    t.integer "reference_number"
    t.decimal "act_inflow_other"
    t.text "note"
    t.decimal "annual_budgeted_income"
    t.decimal "annual_budgeted_expenses"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legacy_ulsterbanks", force: :cascade do |t|
    t.date "trans_date"
    t.string "trans_type"
    t.string "description"
    t.decimal "trans_value"
    t.string "account_name"
    t.string "account_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loan_managements", force: :cascade do |t|
    t.string "year"
    t.string "month"
    t.integer "loan_registration_id"
    t.date "payment_date"
    t.decimal "amount"
    t.text "note"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loan_registrations", force: :cascade do |t|
    t.integer "financialinstitution_id"
    t.string "loan_type"
    t.string "loan_term"
    t.text "rationale"
    t.decimal "amount"
    t.string "loan_reference"
    t.date "drawdown_date"
    t.date "final_payment_date"
    t.integer "user_id"
    t.integer "person_id"
    t.boolean "internal_loan"
    t.decimal "outstanding"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lodgements", force: :cascade do |t|
    t.string "owner"
    t.decimal "amount"
    t.text "details"
    t.integer "user_id"
    t.integer "saving_id"
    t.string "institution"
    t.string "year"
    t.string "month"
    t.integer "person_id"
    t.integer "financialinstitution_id"
    t.string "origination"
    t.text "rationale"
    t.string "day"
    t.integer "plannedactivity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "network_switches", force: :cascade do |t|
    t.string "code_name"
    t.string "branding"
    t.integer "number_of_ports"
    t.string "s_location"
    t.string "ip_address"
    t.string "user_name"
    t.string "password"
    t.boolean "active"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operating_systems", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outflows", force: :cascade do |t|
    t.decimal "amount"
    t.text "details"
    t.integer "user_id"
    t.integer "cashflow_id"
    t.string "month"
    t.string "year"
    t.integer "person_id"
    t.integer "outflowtype_id"
    t.date "date_posted"
    t.text "rationale"
    t.integer "bankaccount_id"
    t.boolean "follow_up"
    t.boolean "cash_withdrawal"
    t.string "picture"
    t.string "flowtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outflowtypes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "system_item"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passwordrepositories", force: :cascade do |t|
    t.string "system_name"
    t.string "system_password"
    t.boolean "active"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paypals", force: :cascade do |t|
    t.date "t_date"
    t.string "t_time"
    t.string "timezone"
    t.string "name"
    t.string "t_type"
    t.string "status"
    t.string "currency"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "fullname"
    t.boolean "active"
    t.date "dob"
    t.string "person_number"
    t.string "pps_number"
    t.boolean "system_item"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plannedactivities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "activity_date"
    t.decimal "target_amount"
    t.integer "user_id"
    t.integer "person_id"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "post_type"
    t.text "description"
    t.string "signed_for_by"
    t.boolean "scanned"
    t.integer "user_id"
    t.integer "delivery_id"
    t.string "owner"
    t.integer "post_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qualifications", force: :cascade do |t|
    t.string "name"
    t.string "school"
    t.date "from"
    t.date "to"
    t.string "grade"
    t.boolean "active"
    t.integer "person_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rent_managements", force: :cascade do |t|
    t.string "year"
    t.string "month"
    t.decimal "amount"
    t.date "date_collected"
    t.text "details"
    t.string "collected_by"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "user_id"
    t.string "link"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rules", force: :cascade do |t|
    t.string "category"
    t.string "title"
    t.text "definition"
    t.boolean "active"
    t.integer "user_id"
    t.string "policy_code"
    t.integer "rules_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rules_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saving_recons", force: :cascade do |t|
    t.integer "saving_id"
    t.integer "user_id"
    t.text "error_details"
    t.text "reconciliation_rationale"
    t.decimal "correction_amount"
    t.string "authorised_by"
    t.date "authorisation_date"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "savings", force: :cascade do |t|
    t.integer "user_id"
    t.string "month"
    t.string "year"
    t.date "saving_date"
    t.string "name"
    t.decimal "balance"
    t.string "saving_number"
    t.integer "reference_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "server_records", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "virtual"
    t.integer "operating_system_id"
    t.integer "person_id"
    t.integer "deployment_status_id"
    t.date "deployment_date"
    t.boolean "domain_controller"
    t.integer "functional_level_id"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_providers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "telephone"
    t.string "email"
    t.string "acc_number"
    t.integer "user_id"
    t.boolean "active"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_requests", force: :cascade do |t|
    t.integer "ticket_number"
    t.integer "request_type_id"
    t.integer "tech_service_id"
    t.text "problem_description"
    t.integer "request_status_id"
    t.text "case_notes"
    t.text "case_resolution"
    t.boolean "resolved"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "switch_ports", force: :cascade do |t|
    t.integer "network_switch_id"
    t.integer "port_number"
    t.integer "server_record_id"
    t.integer "client_record_id"
    t.text "notes"
    t.integer "user_id"
    t.integer "operating_system_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tech_services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active"
    t.text "notes"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "telephones", force: :cascade do |t|
    t.string "phone"
    t.integer "user_id"
    t.boolean "active"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.date "t_date"
    t.string "details"
    t.decimal "amount"
    t.text "rationale"
    t.text "note"
    t.integer "cashbox_id"
    t.integer "person_id"
    t.integer "cashflow_id"
    t.integer "outflowtype_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.boolean "admin"
    t.boolean "access_granted"
    t.string "fullname"
    t.boolean "homeintel_access"
    t.boolean "cfanalyser_access"
    t.boolean "pettycash_access"
    t.boolean "techweb_access"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "withdrawals", force: :cascade do |t|
    t.string "owner"
    t.decimal "amount"
    t.text "details"
    t.integer "user_id"
    t.integer "saving_id"
    t.string "institution"
    t.string "month"
    t.string "year"
    t.integer "person_id"
    t.integer "financialinstitution_id"
    t.string "origination"
    t.text "rationale"
    t.string "day"
    t.integer "plannedactivity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
