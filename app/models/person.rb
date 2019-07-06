class Person < ApplicationRecord
  has_many :emails, dependent: :destroy
  has_many :telephones, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :qualifications, dependent: :destroy
  has_many :employments, dependent: :destroy
  has_many :employmentreferences, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :departments
  has_many :deliveries
  has_many :inflows
  has_many :outflows
  has_many :expenses
  has_many :incomes
  has_many :withdrawals
  has_many :lodgements
  has_many :bankaccounts
  has_many :cashflow_recons
  has_many :saving_recons
  has_many :loan_registrations
  has_many :issue_managements
  has_many :corrective_actions
  has_many :plannedactivities
  has_many :transactions


  accepts_nested_attributes_for :emails, allow_destroy: true
  accepts_nested_attributes_for :telephones, allow_destroy: true
  accepts_nested_attributes_for :addresses, allow_destroy: true
  accepts_nested_attributes_for :qualifications, allow_destroy: true
  accepts_nested_attributes_for :employments, allow_destroy: true
  accepts_nested_attributes_for :employmentreferences, allow_destroy: true
  accepts_nested_attributes_for :comments, allow_destroy: true
end
