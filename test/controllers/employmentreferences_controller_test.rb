require 'test_helper'

class EmploymentreferencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employmentreference = employmentreferences(:one)
  end

  test "should get index" do
    get employmentreferences_url
    assert_response :success
  end

  test "should get new" do
    get new_employmentreference_url
    assert_response :success
  end

  test "should create employmentreference" do
    assert_difference('Employmentreference.count') do
      post employmentreferences_url, params: { employmentreference: { employment_id: @employmentreference.employment_id, person_id: @employmentreference.person_id, referee_active: @employmentreference.referee_active, referee_details: @employmentreference.referee_details, referee_email: @employmentreference.referee_email, referee_name: @employmentreference.referee_name, referee_telephone: @employmentreference.referee_telephone, user_id: @employmentreference.user_id } }
    end

    assert_redirected_to employmentreference_url(Employmentreference.last)
  end

  test "should show employmentreference" do
    get employmentreference_url(@employmentreference)
    assert_response :success
  end

  test "should get edit" do
    get edit_employmentreference_url(@employmentreference)
    assert_response :success
  end

  test "should update employmentreference" do
    patch employmentreference_url(@employmentreference), params: { employmentreference: { employment_id: @employmentreference.employment_id, person_id: @employmentreference.person_id, referee_active: @employmentreference.referee_active, referee_details: @employmentreference.referee_details, referee_email: @employmentreference.referee_email, referee_name: @employmentreference.referee_name, referee_telephone: @employmentreference.referee_telephone, user_id: @employmentreference.user_id } }
    assert_redirected_to employmentreference_url(@employmentreference)
  end

  test "should destroy employmentreference" do
    assert_difference('Employmentreference.count', -1) do
      delete employmentreference_url(@employmentreference)
    end

    assert_redirected_to employmentreferences_url
  end
end
