defmodule MarvelApi.SeriesTest do
  use ExUnit.Case

  test ".all" do
    response = MarvelApi.Series.all
    assert 200 == response["code"]
  end

  test ".get" do
    response = MarvelApi.Series.get("18454")
    assert 200 == response["code"]
  end

  test ".characters" do
    response = MarvelApi.Series.characters("18454")
    assert 200 == response["code"]
  end

  test ".comics" do
    response = MarvelApi.Series.comics("18454")
    assert 200 == response["code"]
  end

  test ".creators" do
    response = MarvelApi.Series.creators("18454")
    assert 200 == response["code"]
  end

  test ".events" do
    response = MarvelApi.Series.events("18454")
    assert 200 == response["code"]
  end

  test ".stories" do
    response = MarvelApi.Series.stories("18454")
    assert 200 == response["code"]
  end
end
