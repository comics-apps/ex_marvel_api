defmodule MarvelApi.Comics do
  def all(params \\ []) do
    MarvelApi.request("comics", params)
  end

  def get(id) do
    MarvelApi.request("comics/" <> id)
  end

  def characters(comic_id, params \\ []) do
    MarvelApi.request("comics/" <> comic_id <> "/characters", params)
  end

  def creators(comic_id, params \\ []) do
    MarvelApi.request("comics/" <> comic_id <> "/creators", params)
  end

  def events(comic_id, params \\ []) do
    MarvelApi.request("comics/" <> comic_id <> "/events", params)
  end

  def stories(comic_id, params \\ []) do
    MarvelApi.request("comics/" <> comic_id <> "/stories", params)
  end
end
