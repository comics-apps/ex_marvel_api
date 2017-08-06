defmodule MarvelApi.Characters do
  def all(params \\ [], options \\ []) do
    MarvelApi.request("characters", params, options)
  end

  def get(id, options \\ []) do
    uri = "characters/" <> id
    MarvelApi.request(uri, [], options)
  end

  def comics(character_id, params \\ [], options \\ []) do
    uri = "characters/" <> character_id <> "/comics"
    MarvelApi.request(uri, params, options)
  end

  def events(character_id, params \\ [], options \\ []) do
    uri = "characters/" <> character_id <> "/events"
    MarvelApi.request(uri, params, options)
  end

  def series(character_id, params \\ [], options \\ []) do
    uri = "characters/" <> character_id <> "/series"
    MarvelApi.request(uri, params, options)
  end

  def stories(character_id, params \\ [], options \\ []) do
    uri = "characters/" <> character_id <> "/stories"
    MarvelApi.request(uri, params, options)
  end
end
