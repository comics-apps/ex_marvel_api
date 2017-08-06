defmodule MarvelApi.StoriesTest do
  use ExUnit.Case

  test ".all" do
    response = MarvelApi.Stories.all
    assert 200 == response["code"]
  end

  test ".all with timeout" do
    response = MarvelApi.Stories.all([], [timeout: 30000, recv_timeout: 30000])
    assert 200 == response["code"]
  end

  test ".get" do
    response = MarvelApi.Stories.get("15915")
    assert 200 == response["code"]
  end

  test ".characters" do
    response = MarvelApi.Stories.characters("15915")
    assert 200 == response["code"]
  end

  test ".comics" do
    response = MarvelApi.Stories.comics("15915")
    assert 200 == response["code"]
  end

  test ".creators" do
    response = MarvelApi.Stories.creators("15915")
    assert 200 == response["code"]
  end

  test ".events" do
    response = MarvelApi.Stories.events("15915")
    assert 200 == response["code"]
  end

  test ".series" do
    response = MarvelApi.Stories.series("15915")
    assert 200 == response["code"]
  end
end
