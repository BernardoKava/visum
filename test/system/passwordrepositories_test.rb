require "application_system_test_case"

class PasswordrepositoriesTest < ApplicationSystemTestCase
  setup do
    @passwordrepository = passwordrepositories(:one)
  end

  test "visiting the index" do
    visit passwordrepositories_url
    assert_selector "h1", text: "Passwordrepositories"
  end

  test "creating a Passwordrepository" do
    visit passwordrepositories_url
    click_on "New Passwordrepository"

    check "Active" if @passwordrepository.active
    fill_in "System name", with: @passwordrepository.system_name
    fill_in "System password", with: @passwordrepository.system_password
    fill_in "User name", with: @passwordrepository.user_name
    click_on "Create Passwordrepository"

    assert_text "Passwordrepository was successfully created"
    click_on "Back"
  end

  test "updating a Passwordrepository" do
    visit passwordrepositories_url
    click_on "Edit", match: :first

    check "Active" if @passwordrepository.active
    fill_in "System name", with: @passwordrepository.system_name
    fill_in "System password", with: @passwordrepository.system_password
    fill_in "User name", with: @passwordrepository.user_name
    click_on "Update Passwordrepository"

    assert_text "Passwordrepository was successfully updated"
    click_on "Back"
  end

  test "destroying a Passwordrepository" do
    visit passwordrepositories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Passwordrepository was successfully destroyed"
  end
end
