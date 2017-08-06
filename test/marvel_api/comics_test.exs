defmodule MarvelApi.ComicsTest do
  use ExUnit.Case

  test ".all" do
    response = MarvelApi.Comics.all
    assert 200 == response["code"]
  end

  test ".all with timeout" do
    response = MarvelApi.Comics.all([], [timeout: 30000, recv_timeout: 30000])
    assert 200 == response["code"]
  end

  test ".get" do
    response = MarvelApi.Comics.get("21478")
    assert 200 == response["code"]
  end

  test ".characters" do
    response = MarvelApi.Comics.characters("21478")
    assert 200 == response["code"]
  end

  test ".creators" do
    response = MarvelApi.Comics.creators("21478")
    assert 200 == response["code"]
  end

  test ".events" do
    response = MarvelApi.Comics.events("21478")
    assert 200 == response["code"]
  end

  test ".stories" do
    response = MarvelApi.Comics.stories("21478")
    assert 200 == response["code"]
  end
end
