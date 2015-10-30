defmodule DistributedChannels.EventController do
  use DistributedChannels.Web, :controller

  def index(conn, params) do
    IO.inspect params
    DistributedChannels.Endpoint.broadcast! "rooms:lobby", "new_msg", params

    text conn, "Ok!"
  end
end
