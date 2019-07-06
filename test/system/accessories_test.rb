require "application_system_test_case"

class AccessoriesTest < ApplicationSystemTestCase
  setup do
    @accessory = accessories(:one)
  end

  test "visiting the index" do
    visit accessories_url
    assert_selector "h1", text: "Accessories"
  end

  test "creating a Accessory" do
    visit accessories_url
    click_on "New Accessory"

    check "Active" if @accessory.active
    fill_in "Client record", with: @accessory.client_record_id
    fill_in "Description", with: @accessory.description
    check "Hard disk" if @accessory.hard_disk
    fill_in "Name", with: @accessory.name
    check "Network card" if @accessory.network_card
    fill_in "Notes", with: @accessory.notes
    fill_in "Server record", with: @accessory.server_record_id
    fill_in "User", with: @accessory.user_id
    click_on "Create Accessory"

    assert_text "Accessory was successfully created"
    click_on "Back"
  end

  test "updating a Accessory" do
    visit accessories_url
    click_on "Edit", match: :first

    check "Active" if @accessory.active
    fill_in "Client record", with: @accessory.client_record_id
    fill_in "Description", with: @accessory.description
    check "Hard disk" if @accessory.hard_disk
    fill_in "Name", with: @accessory.name
    check "Network card" if @accessory.network_card
    fill_in "Notes", with: @accessory.notes
    fill_in "Server record", with: @accessory.server_record_id
    fill_in "User", with: @accessory.user_id
    click_on "Update Accessory"

    assert_text "Accessory was successfully updated"
    click_on "Back"
  end

  test "destroying a Accessory" do
    visit accessories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accessory was successfully destroyed"
  end
end
