defmodule MarvelApi.Comics do
  def all(params \\ [], options \\ []) do
    MarvelApi.request("comics", params, options)
  end

  def get(id, options \\ []) do
    uri = "comics/" <> id
    MarvelApi.request(uri, [], options)
  end

  def characters(comic_id, params \\ [], options \\ []) do
    uri = "comics/" <> comic_id <> "/characters"
    MarvelApi.request(uri, params, options)
  end

  def creators(comic_id, params \\ [], options \\ []) do
    uri = "comics/" <> comic_id <> "/creators"
    MarvelApi.request(uri, params, options)
  end

  def events(comic_id, params \\ [], options \\ []) do
    uri = "comics/" <> comic_id <> "/events"
    MarvelApi.request(uri, params, options)
  end

  def stories(comic_id, params \\ [], options \\ []) do
    uri = "comics/" <> comic_id <> "/stories"
    MarvelApi.request(uri, params, options)
  end
end
