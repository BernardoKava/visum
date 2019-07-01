require 'test_helper'

class LodgementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lodgement = lodgements(:one)
  end

  test "should get index" do
    get lodgements_url
    assert_response :success
  end

  test "should get new" do
    get new_lodgement_url
    assert_response :success
  end

  test "should create lodgement" do
    assert_difference('Lodgement.count') do
      post lodgements_url, params: { lodgement: { amount: @lodgement.amount, day: @lodgement.day, details: @lodgement.details, financialinstitution_id: @lodgement.financialinstitution_id, institution: @lodgement.institution, month: @lodgement.month, origination: @lodgement.origination, owner: @lodgement.owner, person_id: @lodgement.person_id, plannedactivity_id: @lodgement.plannedactivity_id, rationale: @lodgement.rationale, saving_id: @lodgement.saving_id, user_id: @lodgement.user_id, year: @lodgement.year } }
    end

    assert_redirected_to lodgement_url(Lodgement.last)
  end

  test "should show lodgement" do
    get lodgement_url(@lodgement)
    assert_response :success
  end

  test "should get edit" do
    get edit_lodgement_url(@lodgement)
    assert_response :success
  end

  test "should update lodgement" do
    patch lodgement_url(@lodgement), params: { lodgement: { amount: @lodgement.amount, day: @lodgement.day, details: @lodgement.details, financialinstitution_id: @lodgement.financialinstitution_id, institution: @lodgement.institution, month: @lodgement.month, origination: @lodgement.origination, owner: @lodgement.owner, person_id: @lodgement.person_id, plannedactivity_id: @lodgement.plannedactivity_id, rationale: @lodgement.rationale, saving_id: @lodgement.saving_id, user_id: @lodgement.user_id, year: @lodgement.year } }
    assert_redirected_to lodgement_url(@lodgement)
  end

  test "should destroy lodgement" do
    assert_difference('Lodgement.count', -1) do
      delete lodgement_url(@lodgement)
    end

    assert_redirected_to lodgements_url
  end
end
