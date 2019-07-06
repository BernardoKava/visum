require "application_system_test_case"

class FunctionalLevelsTest < ApplicationSystemTestCase
  setup do
    @functional_level = functional_levels(:one)
  end

  test "visiting the index" do
    visit functional_levels_url
    assert_selector "h1", text: "Functional Levels"
  end

  test "creating a Functional level" do
    visit functional_levels_url
    click_on "New Functional Level"

    check "Active" if @functional_level.active
    fill_in "Description", with: @functional_level.description
    fill_in "Name", with: @functional_level.name
    fill_in "Notes", with: @functional_level.notes
    fill_in "User", with: @functional_level.user_id
    click_on "Create Functional level"

    assert_text "Functional level was successfully created"
    click_on "Back"
  end

  test "updating a Functional level" do
    visit functional_levels_url
    click_on "Edit", match: :first

    check "Active" if @functional_level.active
    fill_in "Description", with: @functional_level.description
    fill_in "Name", with: @functional_level.name
    fill_in "Notes", with: @functional_level.notes
    fill_in "User", with: @functional_level.user_id
    click_on "Update Functional level"

    assert_text "Functional level was successfully updated"
    click_on "Back"
  end

  test "destroying a Functional level" do
    visit functional_levels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Functional level was successfully destroyed"
  end
end
