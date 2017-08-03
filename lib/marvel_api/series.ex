defmodule MarvelApi.Series do
  def all(params \\ []) do
    MarvelApi.request("series", params)
  end

  def get(id) do
    MarvelApi.request("series/" <> id)
  end

  def characters(serie_id, params \\ []) do
    MarvelApi.request("series/" <> serie_id <> "/characters", params)
  end

  def comics(serie_id, params \\ []) do
    MarvelApi.request("series/" <> serie_id <> "/comics", params)
  end

  def creators(serie_id, params \\ []) do
    MarvelApi.request("series/" <> serie_id <> "/creators", params)
  end

  def events(serie_id, params \\ []) do
    MarvelApi.request("series/" <> serie_id <> "/events", params)
  end

  def stories(serie_id, params \\ []) do
    MarvelApi.request("series/" <> serie_id <> "/stories", params)
  end
end
