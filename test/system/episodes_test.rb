require "application_system_test_case"

class EpisodesTest < ApplicationSystemTestCase
  setup do
    @episode = episodes(:one)
  end

  test "visiting the index" do
    visit episodes_url
    assert_selector "h1", text: "Episodes"
  end

  test "creating a Episode" do
    visit episodes_url
    click_on "New Episode"

    fill_in "Content", with: @episode.content
    fill_in "Cookiecount", with: @episode.cookiecount
    fill_in "Registration", with: @episode.registration
    fill_in "Round", with: @episode.round
    fill_in "Scope", with: @episode.scope
    fill_in "Webtoon", with: @episode.webtoon_id
    click_on "Create Episode"

    assert_text "Episode was successfully created"
    click_on "Back"
  end

  test "updating a Episode" do
    visit episodes_url
    click_on "Edit", match: :first

    fill_in "Content", with: @episode.content
    fill_in "Cookiecount", with: @episode.cookiecount
    fill_in "Registration", with: @episode.registration
    fill_in "Round", with: @episode.round
    fill_in "Scope", with: @episode.scope
    fill_in "Webtoon", with: @episode.webtoon_id
    click_on "Update Episode"

    assert_text "Episode was successfully updated"
    click_on "Back"
  end

  test "destroying a Episode" do
    visit episodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Episode was successfully destroyed"
  end
end
