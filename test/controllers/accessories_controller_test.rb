require 'test_helper'

class AccessoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accessory = accessories(:one)
  end

  test "should get index" do
    get accessories_url
    assert_response :success
  end

  test "should get new" do
    get new_accessory_url
    assert_response :success
  end

  test "should create accessory" do
    assert_difference('Accessory.count') do
      post accessories_url, params: { accessory: { active: @accessory.active, client_record_id: @accessory.client_record_id, description: @accessory.description, hard_disk: @accessory.hard_disk, name: @accessory.name, network_card: @accessory.network_card, notes: @accessory.notes, server_record_id: @accessory.server_record_id, user_id: @accessory.user_id } }
    end

    assert_redirected_to accessory_url(Accessory.last)
  end

  test "should show accessory" do
    get accessory_url(@accessory)
    assert_response :success
  end

  test "should get edit" do
    get edit_accessory_url(@accessory)
    assert_response :success
  end

  test "should update accessory" do
    patch accessory_url(@accessory), params: { accessory: { active: @accessory.active, client_record_id: @accessory.client_record_id, description: @accessory.description, hard_disk: @accessory.hard_disk, name: @accessory.name, network_card: @accessory.network_card, notes: @accessory.notes, server_record_id: @accessory.server_record_id, user_id: @accessory.user_id } }
    assert_redirected_to accessory_url(@accessory)
  end

  test "should destroy accessory" do
    assert_difference('Accessory.count', -1) do
      delete accessory_url(@accessory)
    end

    assert_redirected_to accessories_url
  end
end
