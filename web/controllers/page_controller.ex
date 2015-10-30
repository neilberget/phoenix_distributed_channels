defmodule DistributedChannels.PageController do
  use DistributedChannels.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
