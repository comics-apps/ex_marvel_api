defmodule MarvelApi.CreatorsTest do
  use ExUnit.Case

  test ".all" do
    response = MarvelApi.Creators.all
    assert 200 == response["code"]
  end

  test ".all with timeout" do
    response = MarvelApi.Creators.all([], [timeout: 30000, recv_timeout: 30000])
    assert 200 == response["code"]
  end

  test ".get" do
    response = MarvelApi.Creators.get("7968")
    assert 200 == response["code"]
  end

  test ".comics" do
    response = MarvelApi.Creators.comics("7968")
    assert 200 == response["code"]
  end

  test ".events" do
    response = MarvelApi.Creators.events("7968")
    assert 200 == response["code"]
  end

  test ".series" do
    response = MarvelApi.Creators.series("7968")
    assert 200 == response["code"]
  end

  test ".stories" do
    response = MarvelApi.Creators.stories("7968")
    assert 200 == response["code"]
  end
end
