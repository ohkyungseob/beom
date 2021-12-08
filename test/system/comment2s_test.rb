require "application_system_test_case"

class Comment2sTest < ApplicationSystemTestCase
  setup do
    @comment2 = comment2s(:one)
  end

  test "visiting the index" do
    visit comment2s_url
    assert_selector "h1", text: "Comment2s"
  end

  test "creating a Comment2" do
    visit comment2s_url
    click_on "New Comment2"

    fill_in "Episode", with: @comment2.episode_id
    fill_in "User", with: @comment2.user_id
    fill_in "Usercomment2", with: @comment2.usercomment2
    click_on "Create Comment2"

    assert_text "Comment2 was successfully created"
    click_on "Back"
  end

  test "updating a Comment2" do
    visit comment2s_url
    click_on "Edit", match: :first

    fill_in "Episode", with: @comment2.episode_id
    fill_in "User", with: @comment2.user_id
    fill_in "Usercomment2", with: @comment2.usercomment2
    click_on "Update Comment2"

    assert_text "Comment2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Comment2" do
    visit comment2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comment2 was successfully destroyed"
  end
end
