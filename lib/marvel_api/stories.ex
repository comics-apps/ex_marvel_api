defmodule MarvelApi.Stories do
  def all(params \\ []) do
    MarvelApi.request("stories", params)
  end

  def get(id) do
    MarvelApi.request("stories/" <> id)
  end

  def characters(serie_id, params \\ []) do
    MarvelApi.request("stories/" <> serie_id <> "/characters", params)
  end

  def comics(serie_id, params \\ []) do
    MarvelApi.request("stories/" <> serie_id <> "/comics", params)
  end

  def creators(serie_id, params \\ []) do
    MarvelApi.request("stories/" <> serie_id <> "/creators", params)
  end

  def events(serie_id, params \\ []) do
    MarvelApi.request("stories/" <> serie_id <> "/events", params)
  end

  def series(serie_id, params \\ []) do
    MarvelApi.request("stories/" <> serie_id <> "/series", params)
  end
end
