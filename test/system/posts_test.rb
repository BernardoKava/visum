require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Delivery", with: @post.delivery_id
    fill_in "Description", with: @post.description
    fill_in "Owner", with: @post.owner
    fill_in "Post type", with: @post.post_type
    fill_in "Post type", with: @post.post_type_id
    check "Scanned" if @post.scanned
    fill_in "Signed for by", with: @post.signed_for_by
    fill_in "User", with: @post.user_id
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Delivery", with: @post.delivery_id
    fill_in "Description", with: @post.description
    fill_in "Owner", with: @post.owner
    fill_in "Post type", with: @post.post_type
    fill_in "Post type", with: @post.post_type_id
    check "Scanned" if @post.scanned
    fill_in "Signed for by", with: @post.signed_for_by
    fill_in "User", with: @post.user_id
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
