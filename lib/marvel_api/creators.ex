defmodule MarvelApi.Creators do
  def all(params \\ []) do
    MarvelApi.request("creators", params)
  end

  def get(id) do
    MarvelApi.request("creators/" <> id)
  end

  def comics(creator_id, params \\ []) do
    MarvelApi.request("creators/" <> creator_id <> "/comics", params)
  end

  def events(creator_id, params \\ []) do
    MarvelApi.request("creators/" <> creator_id <> "/events", params)
  end

  def series(creator_id, params \\ []) do
    MarvelApi.request("creators/" <> creator_id <> "/series", params)
  end

  def stories(creator_id, params \\ []) do
    MarvelApi.request("creators/" <> creator_id <> "/stories", params)
  end
end
