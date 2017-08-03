defmodule MarvelApi do
  use HTTPoison.Base

  def process_url(endpoint) do
    "http://gateway.marvel.com/v1/public/" <> endpoint
  end

  def process_response_body(body) do
    JSX.decode!(body)
  end

  def request(endpoint, params \\ []) do
    ts = :os.system_time(:seconds)
           |> Integer.to_string
    hash = :crypto.hash(:md5, ts <> MarvelApi.private_key <> MarvelApi.public_key)
             |> Base.encode16(case: :lower)
    new_params = Enum.concat([ts: ts, hash: hash, apikey: MarvelApi.public_key], params)
    MarvelApi.get!(endpoint <> "?" <> URI.encode_query(new_params)).body
  end

  def public_key do
    Application.get_env(:marvel_api, :public_key) ||
      System.get_env("MARVEL_API_PUBLIC_KEY")
  end

  def private_key do
    Application.get_env(:marvel_api, :private_key) ||
      System.get_env("MARVEL_API_PRIVATE_KEY")
  end
end
