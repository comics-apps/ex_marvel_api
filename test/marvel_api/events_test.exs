defmodule MarvelApi.EventsTest do
  use ExUnit.Case

  test ".all" do
    response = MarvelApi.Events.all
    assert 200 == response["code"]
  end

  test ".get" do
    response = MarvelApi.Events.get("116")
    assert 200 == response["code"]
  end

  test ".characters" do
    response = MarvelApi.Events.characters("116")
    assert 200 == response["code"]
  end

  test ".comics" do
    response = MarvelApi.Events.comics("116")
    assert 200 == response["code"]
  end

  test ".creators" do
    response = MarvelApi.Events.creators("116")
    assert 200 == response["code"]
  end

  test ".series" do
    response = MarvelApi.Events.series("116")
    assert 200 == response["code"]
  end

  test ".stories" do
    response = MarvelApi.Events.stories("116")
    assert 200 == response["code"]
  end
end
