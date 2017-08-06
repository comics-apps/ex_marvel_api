defmodule MarvelApi.Stories do
  def all(params \\ [], options \\ []) do
    MarvelApi.request("stories", params, options)
  end

  def get(id, options \\ []) do
    uri = "stories/" <> id
    MarvelApi.request(uri, [], options)
  end

  def characters(serie_id, params \\ [], options \\ []) do
    uri = "stories/" <> serie_id <> "/characters"
    MarvelApi.request(uri, params, options)
  end

  def comics(serie_id, params \\ [], options \\ []) do
    uri = "stories/" <> serie_id <> "/comics"
    MarvelApi.request(uri, params, options)
  end

  def creators(serie_id, params \\ [], options \\ []) do
    uri = "stories/" <> serie_id <> "/creators"
    MarvelApi.request(uri, params, options)
  end

  def events(serie_id, params \\ [], options \\ []) do
    uri = "stories/" <> serie_id <> "/events"
    MarvelApi.request(uri, params, options)
  end

  def series(serie_id, params \\ [], options \\ []) do
    uri = "stories/" <> serie_id <> "/series"
    MarvelApi.request(uri, params, options)
  end
end
