require "application_system_test_case"

class InventoriesTest < ApplicationSystemTestCase
  setup do
    @inventory = inventories(:one)
  end

  test "visiting the index" do
    visit inventories_url
    assert_selector "h1", text: "Inventories"
  end

  test "creating a Inventory" do
    visit inventories_url
    click_on "New Inventory"

    check "Active" if @inventory.active
    fill_in "Department", with: @inventory.department
    fill_in "Department", with: @inventory.department_id
    fill_in "Inventory number", with: @inventory.inventory_number
    fill_in "Location", with: @inventory.location
    fill_in "Period from", with: @inventory.period_from
    fill_in "User", with: @inventory.user_id
    click_on "Create Inventory"

    assert_text "Inventory was successfully created"
    click_on "Back"
  end

  test "updating a Inventory" do
    visit inventories_url
    click_on "Edit", match: :first

    check "Active" if @inventory.active
    fill_in "Department", with: @inventory.department
    fill_in "Department", with: @inventory.department_id
    fill_in "Inventory number", with: @inventory.inventory_number
    fill_in "Location", with: @inventory.location
    fill_in "Period from", with: @inventory.period_from
    fill_in "User", with: @inventory.user_id
    click_on "Update Inventory"

    assert_text "Inventory was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventory" do
    visit inventories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventory was successfully destroyed"
  end
end
