require 'test_helper'

class PasswordrepositoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @passwordrepository = passwordrepositories(:one)
  end

  test "should get index" do
    get passwordrepositories_url
    assert_response :success
  end

  test "should get new" do
    get new_passwordrepository_url
    assert_response :success
  end

  test "should create passwordrepository" do
    assert_difference('Passwordrepository.count') do
      post passwordrepositories_url, params: { passwordrepository: { active: @passwordrepository.active, system_name: @passwordrepository.system_name, system_password: @passwordrepository.system_password, user_name: @passwordrepository.user_name } }
    end

    assert_redirected_to passwordrepository_url(Passwordrepository.last)
  end

  test "should show passwordrepository" do
    get passwordrepository_url(@passwordrepository)
    assert_response :success
  end

  test "should get edit" do
    get edit_passwordrepository_url(@passwordrepository)
    assert_response :success
  end

  test "should update passwordrepository" do
    patch passwordrepository_url(@passwordrepository), params: { passwordrepository: { active: @passwordrepository.active, system_name: @passwordrepository.system_name, system_password: @passwordrepository.system_password, user_name: @passwordrepository.user_name } }
    assert_redirected_to passwordrepository_url(@passwordrepository)
  end

  test "should destroy passwordrepository" do
    assert_difference('Passwordrepository.count', -1) do
      delete passwordrepository_url(@passwordrepository)
    end

    assert_redirected_to passwordrepositories_url
  end
end
