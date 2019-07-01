require "application_system_test_case"

class RulesCategoriesTest < ApplicationSystemTestCase
  setup do
    @rules_category = rules_categories(:one)
  end

  test "visiting the index" do
    visit rules_categories_url
    assert_selector "h1", text: "Rules Categories"
  end

  test "creating a Rules category" do
    visit rules_categories_url
    click_on "New Rules Category"

    fill_in "Description", with: @rules_category.description
    fill_in "Name", with: @rules_category.name
    click_on "Create Rules category"

    assert_text "Rules category was successfully created"
    click_on "Back"
  end

  test "updating a Rules category" do
    visit rules_categories_url
    click_on "Edit", match: :first

    fill_in "Description", with: @rules_category.description
    fill_in "Name", with: @rules_category.name
    click_on "Update Rules category"

    assert_text "Rules category was successfully updated"
    click_on "Back"
  end

  test "destroying a Rules category" do
    visit rules_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rules category was successfully destroyed"
  end
end
