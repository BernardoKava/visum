require "application_system_test_case"

class DeliveriesTest < ApplicationSystemTestCase
  setup do
    @delivery = deliveries(:one)
  end

  test "visiting the index" do
    visit deliveries_url
    assert_selector "h1", text: "Deliveries"
  end

  test "creating a Delivery" do
    visit deliveries_url
    click_on "New Delivery"

    fill_in "Delivery date", with: @delivery.delivery_date
    fill_in "Delivery number", with: @delivery.delivery_number
    fill_in "Person", with: @delivery.person_id
    fill_in "Receiver", with: @delivery.receiver
    fill_in "User", with: @delivery.user_id
    click_on "Create Delivery"

    assert_text "Delivery was successfully created"
    click_on "Back"
  end

  test "updating a Delivery" do
    visit deliveries_url
    click_on "Edit", match: :first

    fill_in "Delivery date", with: @delivery.delivery_date
    fill_in "Delivery number", with: @delivery.delivery_number
    fill_in "Person", with: @delivery.person_id
    fill_in "Receiver", with: @delivery.receiver
    fill_in "User", with: @delivery.user_id
    click_on "Update Delivery"

    assert_text "Delivery was successfully updated"
    click_on "Back"
  end

  test "destroying a Delivery" do
    visit deliveries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Delivery was successfully destroyed"
  end
end
