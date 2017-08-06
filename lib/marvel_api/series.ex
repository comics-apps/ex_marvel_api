defmodule MarvelApi.Series do
  def all(params \\ [], options \\ []) do
    MarvelApi.request("series", params, options)
  end

  def get(id, options \\ []) do
    uri = "series/" <> id
    MarvelApi.request(uri, [], options)
  end

  def characters(serie_id, params \\ [], options \\ []) do
    uri = "series/" <> serie_id <> "/characters"
    MarvelApi.request(uri, params, options)
  end

  def comics(serie_id, params \\ [], options \\ []) do
    uri = "series/" <> serie_id <> "/comics"
    MarvelApi.request(uri, params, options)
  end

  def creators(serie_id, params \\ [], options \\ []) do
    uri = "series/" <> serie_id <> "/creators"
    MarvelApi.request(uri, params, options)
  end

  def events(serie_id, params \\ [], options \\ []) do
    uri = "series/" <> serie_id <> "/events"
    MarvelApi.request(uri, params, options)
  end

  def stories(serie_id, params \\ [], options \\ []) do
    uri = "series/" <> serie_id <> "/stories"
    MarvelApi.request(uri, params, options)
  end
end
