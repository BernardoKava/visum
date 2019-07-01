require 'test_helper'

class FinancialinstitutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financialinstitution = financialinstitutions(:one)
  end

  test "should get index" do
    get financialinstitutions_url
    assert_response :success
  end

  test "should get new" do
    get new_financialinstitution_url
    assert_response :success
  end

  test "should create financialinstitution" do
    assert_difference('Financialinstitution.count') do
      post financialinstitutions_url, params: { financialinstitution: { address: @financialinstitution.address, description: @financialinstitution.description, email: @financialinstitution.email, institution_code: @financialinstitution.institution_code, latitude: @financialinstitution.latitude, longitude: @financialinstitution.longitude, name: @financialinstitution.name, telephone: @financialinstitution.telephone } }
    end

    assert_redirected_to financialinstitution_url(Financialinstitution.last)
  end

  test "should show financialinstitution" do
    get financialinstitution_url(@financialinstitution)
    assert_response :success
  end

  test "should get edit" do
    get edit_financialinstitution_url(@financialinstitution)
    assert_response :success
  end

  test "should update financialinstitution" do
    patch financialinstitution_url(@financialinstitution), params: { financialinstitution: { address: @financialinstitution.address, description: @financialinstitution.description, email: @financialinstitution.email, institution_code: @financialinstitution.institution_code, latitude: @financialinstitution.latitude, longitude: @financialinstitution.longitude, name: @financialinstitution.name, telephone: @financialinstitution.telephone } }
    assert_redirected_to financialinstitution_url(@financialinstitution)
  end

  test "should destroy financialinstitution" do
    assert_difference('Financialinstitution.count', -1) do
      delete financialinstitution_url(@financialinstitution)
    end

    assert_redirected_to financialinstitutions_url
  end
end
