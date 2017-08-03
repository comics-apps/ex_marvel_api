defmodule MarvelApi.Characters do
  def all(params \\ []) do
    MarvelApi.request("characters", params)
  end

  def get(id) do
    MarvelApi.request("characters/" <> id)
  end

  def comics(character_id, params \\ []) do
    MarvelApi.request("characters/" <> character_id <> "/comics", params)
  end

  def events(character_id, params \\ []) do
    MarvelApi.request("characters/" <> character_id <> "/events", params)
  end

  def series(character_id, params \\ []) do
    MarvelApi.request("characters/" <> character_id <> "/series", params)
  end

  def stories(character_id, params \\ []) do
    MarvelApi.request("characters/" <> character_id <> "/stories", params)
  end
end
