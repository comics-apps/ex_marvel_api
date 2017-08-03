defmodule MarvelApi.Events do
  def all(params \\ []) do
    MarvelApi.request("events", params)
  end

  def get(id) do
    MarvelApi.request("events/" <> id)
  end

  def characters(event_id, params \\ []) do
    MarvelApi.request("events/" <> event_id <> "/characters", params)
  end

  def comics(event_id, params \\ []) do
    MarvelApi.request("events/" <> event_id <> "/comics", params)
  end

  def creators(event_id, params \\ []) do
    MarvelApi.request("events/" <> event_id <> "/creators", params)
  end

  def series(event_id, params \\ []) do
    MarvelApi.request("events/" <> event_id <> "/series", params)
  end

  def stories(event_id, params \\ []) do
    MarvelApi.request("events/" <> event_id <> "/stories", params)
  end
end
