defmodule MarvelApi.Events do
  def all(params \\ [], options \\ []) do
    MarvelApi.request("events", params, options)
  end

  def get(id, options \\ []) do
    uri = "events/" <> id
    MarvelApi.request(uri, [], options)
  end

  def characters(event_id, params \\ [], options \\ []) do
    uri = "events/" <> event_id <> "/characters"
    MarvelApi.request(uri, params, options)
  end

  def comics(event_id, params \\ [], options \\ []) do
    uri = "events/" <> event_id <> "/comics"
    MarvelApi.request(uri, params, options)
  end

  def creators(event_id, params \\ [], options \\ []) do
    uri = "events/" <> event_id <> "/creators"
    MarvelApi.request(uri, params, options)
  end

  def series(event_id, params \\ [], options \\ []) do
    uri = "events/" <> event_id <> "/series"
    MarvelApi.request(uri, params, options)
  end

  def stories(event_id, params \\ [], options \\ []) do
    uri = "events/" <> event_id <> "/stories"
    MarvelApi.request(uri, params, options)
  end
end
