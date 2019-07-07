Rails.application.routes.draw do
  root 'static_pages#home'
  get 'dashboard/index'
  get 'dashboard/financial_charts'
  resources :client_records
  resources :switch_ports
  resources :network_switches
  resources :service_requests
  resources :request_statuses
  resources :tech_services
  resources :request_types
  resources :herga_applications
  resources :accessories
  resources :operating_systems
  resources :deployment_statuses
  resources :functional_levels
  resources :server_records
  resources :withdrawals
  resources :transactions
  resources :telephones
  resources :service_providers
  resources :savings
  resources :saving_recons
  resources :rules_categories
  resources :rules
  resources :resources
  resources :rent_managements
  resources :qualifications
  resources :posts
  resources :post_types
  resources :plannedactivities
  resources :people
  resources :paypals
  resources :passwordrepositories
  resources :outflowtypes
  resources :outflows
  resources :lodgements
  resources :loan_registrations
  resources :loan_managements
  resources :legacy_ulsterbanks
  resources :ledgers
  resources :items
  resources :issue_managements
  resources :inventories
  resources :inflowtypes
  resources :inflows
  resources :incomes
  resources :financialinstitutions
  resources :expenses
  resources :employments
  resources :employmentreferences
  resources :emails
  resources :departments
  resources :deliveries
  resources :corrective_actions
  resources :comments
  resources :cashflows
  resources :cashflow_recons
  resources :cashboxes
  resources :budgets
  resources :bankcards
  resources :bankaccounts
  resources :addresses


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
