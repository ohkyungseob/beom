require "application_system_test_case"

class WebtoonsTest < ApplicationSystemTestCase
  setup do
    @webtoon = webtoons(:one)
  end

  test "visiting the index" do
    visit webtoons_url
    assert_selector "h1", text: "Webtoons"
  end

  test "creating a Webtoon" do
    visit webtoons_url
    click_on "New Webtoon"

    fill_in "Agelimit", with: @webtoon.agelimit
    fill_in "Attentioncount", with: @webtoon.attentioncount
    fill_in "Author", with: @webtoon.author
    fill_in "Day", with: @webtoon.day
    fill_in "Genre", with: @webtoon.genre
    fill_in "Stardate", with: @webtoon.stardate
    fill_in "Summary", with: @webtoon.summary
    fill_in "Webtoonname", with: @webtoon.webtoonname
    click_on "Create Webtoon"

    assert_text "Webtoon was successfully created"
    click_on "Back"
  end

  test "updating a Webtoon" do
    visit webtoons_url
    click_on "Edit", match: :first

    fill_in "Agelimit", with: @webtoon.agelimit
    fill_in "Attentioncount", with: @webtoon.attentioncount
    fill_in "Author", with: @webtoon.author
    fill_in "Day", with: @webtoon.day
    fill_in "Genre", with: @webtoon.genre
    fill_in "Stardate", with: @webtoon.stardate
    fill_in "Summary", with: @webtoon.summary
    fill_in "Webtoonname", with: @webtoon.webtoonname
    click_on "Update Webtoon"

    assert_text "Webtoon was successfully updated"
    click_on "Back"
  end

  test "destroying a Webtoon" do
    visit webtoons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Webtoon was successfully destroyed"
  end
end
