defmodule ExTwitter.API.Timelines do
  @moduledoc """
  Provides timeline API interfaces.
  """

  import ExTwitter.API.Base

  def user_timeline(options \\ []) do
    params = ExTwitter.Parser.parse_request_params(options)
    request(:get, "1.1/statuses/user_timeline.json", params)
      |> Enum.map(&ExTwitter.Parser.parse_tweet/1)
  end
end
