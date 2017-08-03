defmodule MarvelApi.CharactersTest do
  use ExUnit.Case

  test ".all" do
    response = MarvelApi.Characters.all
    assert 200 == response["code"]
  end

  test ".get" do
    response = MarvelApi.Characters.get("1011334")
    assert 200 == response["code"]
  end

  test ".comics" do
    response = MarvelApi.Characters.comics("1011334")
    assert 200 == response["code"]
  end

  test ".events" do
    response = MarvelApi.Characters.events("1011334")
    assert 200 == response["code"]
  end

  test ".series" do
    response = MarvelApi.Characters.series("1011334")
    assert 200 == response["code"]
  end

  test ".stories" do
    response = MarvelApi.Characters.stories("1011334")
    assert 200 == response["code"]
  end
end
