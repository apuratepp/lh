defmodule LhWeb.PageController do
  use LhWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
