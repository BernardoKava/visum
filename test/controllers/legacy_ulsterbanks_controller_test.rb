require 'test_helper'

class LegacyUlsterbanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legacy_ulsterbank = legacy_ulsterbanks(:one)
  end

  test "should get index" do
    get legacy_ulsterbanks_url
    assert_response :success
  end

  test "should get new" do
    get new_legacy_ulsterbank_url
    assert_response :success
  end

  test "should create legacy_ulsterbank" do
    assert_difference('LegacyUlsterbank.count') do
      post legacy_ulsterbanks_url, params: { legacy_ulsterbank: { account_name: @legacy_ulsterbank.account_name, account_number: @legacy_ulsterbank.account_number, description: @legacy_ulsterbank.description, trans_date: @legacy_ulsterbank.trans_date, trans_type: @legacy_ulsterbank.trans_type, trans_value: @legacy_ulsterbank.trans_value } }
    end

    assert_redirected_to legacy_ulsterbank_url(LegacyUlsterbank.last)
  end

  test "should show legacy_ulsterbank" do
    get legacy_ulsterbank_url(@legacy_ulsterbank)
    assert_response :success
  end

  test "should get edit" do
    get edit_legacy_ulsterbank_url(@legacy_ulsterbank)
    assert_response :success
  end

  test "should update legacy_ulsterbank" do
    patch legacy_ulsterbank_url(@legacy_ulsterbank), params: { legacy_ulsterbank: { account_name: @legacy_ulsterbank.account_name, account_number: @legacy_ulsterbank.account_number, description: @legacy_ulsterbank.description, trans_date: @legacy_ulsterbank.trans_date, trans_type: @legacy_ulsterbank.trans_type, trans_value: @legacy_ulsterbank.trans_value } }
    assert_redirected_to legacy_ulsterbank_url(@legacy_ulsterbank)
  end

  test "should destroy legacy_ulsterbank" do
    assert_difference('LegacyUlsterbank.count', -1) do
      delete legacy_ulsterbank_url(@legacy_ulsterbank)
    end

    assert_redirected_to legacy_ulsterbanks_url
  end
end
