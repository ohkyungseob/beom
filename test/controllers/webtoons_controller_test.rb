require 'test_helper'

class WebtoonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @webtoon = webtoons(:one)
  end

  test "should get index" do
    get webtoons_url
    assert_response :success
  end

  test "should get new" do
    get new_webtoon_url
    assert_response :success
  end

  test "should create webtoon" do
    assert_difference('Webtoon.count') do
      post webtoons_url, params: { webtoon: { agelimit: @webtoon.agelimit, attentioncount: @webtoon.attentioncount, author: @webtoon.author, day: @webtoon.day, genre: @webtoon.genre, stardate: @webtoon.stardate, summary: @webtoon.summary, webtoonname: @webtoon.webtoonname } }
    end

    assert_redirected_to webtoon_url(Webtoon.last)
  end

  test "should show webtoon" do
    get webtoon_url(@webtoon)
    assert_response :success
  end

  test "should get edit" do
    get edit_webtoon_url(@webtoon)
    assert_response :success
  end

  test "should update webtoon" do
    patch webtoon_url(@webtoon), params: { webtoon: { agelimit: @webtoon.agelimit, attentioncount: @webtoon.attentioncount, author: @webtoon.author, day: @webtoon.day, genre: @webtoon.genre, stardate: @webtoon.stardate, summary: @webtoon.summary, webtoonname: @webtoon.webtoonname } }
    assert_redirected_to webtoon_url(@webtoon)
  end

  test "should destroy webtoon" do
    assert_difference('Webtoon.count', -1) do
      delete webtoon_url(@webtoon)
    end

    assert_redirected_to webtoons_url
  end
end
