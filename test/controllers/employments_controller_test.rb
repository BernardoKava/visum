require 'test_helper'

class EmploymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employment = employments(:one)
  end

  test "should get index" do
    get employments_url
    assert_response :success
  end

  test "should get new" do
    get new_employment_url
    assert_response :success
  end

  test "should create employment" do
    assert_difference('Employment.count') do
      post employments_url, params: { employment: { actve: @employment.actve, company: @employment.company, company_address: @employment.company_address, company_details: @employment.company_details, company_email: @employment.company_email, company_telephone: @employment.company_telephone, from: @employment.from, person_id: @employment.person_id, position: @employment.position, role: @employment.role, terminationreason: @employment.terminationreason, to: @employment.to, user_id: @employment.user_id } }
    end

    assert_redirected_to employment_url(Employment.last)
  end

  test "should show employment" do
    get employment_url(@employment)
    assert_response :success
  end

  test "should get edit" do
    get edit_employment_url(@employment)
    assert_response :success
  end

  test "should update employment" do
    patch employment_url(@employment), params: { employment: { actve: @employment.actve, company: @employment.company, company_address: @employment.company_address, company_details: @employment.company_details, company_email: @employment.company_email, company_telephone: @employment.company_telephone, from: @employment.from, person_id: @employment.person_id, position: @employment.position, role: @employment.role, terminationreason: @employment.terminationreason, to: @employment.to, user_id: @employment.user_id } }
    assert_redirected_to employment_url(@employment)
  end

  test "should destroy employment" do
    assert_difference('Employment.count', -1) do
      delete employment_url(@employment)
    end

    assert_redirected_to employments_url
  end
end
