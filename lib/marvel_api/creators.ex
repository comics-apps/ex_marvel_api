defmodule MarvelApi.Creators do
  def all(params \\ [], options \\ []) do
    MarvelApi.request("creators", params, options)
  end

  def get(id, options \\ []) do
    uri = "creators/" <> id
    MarvelApi.request(uri, [], options)
  end

  def comics(creator_id, params \\ [], options \\ []) do
    uri = "creators/" <> creator_id <> "/comics"
    MarvelApi.request(uri, params, options)
  end

  def events(creator_id, params \\ [], options \\ []) do
    uri = "creators/" <> creator_id <> "/events"
    MarvelApi.request(uri, params, options)
  end

  def series(creator_id, params \\ [], options \\ []) do
    uri = "creators/" <> creator_id <> "/series"
    MarvelApi.request(uri, params, options)
  end

  def stories(creator_id, params \\ [], options \\ []) do
    uri = "creators/" <> creator_id <> "/stories"
    MarvelApi.request(uri, params, options)
  end
end
