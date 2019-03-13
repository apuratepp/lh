defmodule Lh.Neteja.Api do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://sawext.l-h.cat:8443"
  plug Tesla.Middleware.Headers, [{"Accept", "*/*"}, {"User-Agent", "Lh 1.0"}]
  plug Tesla.Middleware.JSON
  plug Tesla.Middleware.Logger

  def index do
    get("WSPiFE/wsNetejaFE.ashx", query: [ids: Enum.join(ids(), ",")])
  end

  def show(id) do
    get("WSPiFE/wsNetejaFE.ashx", query: [idp: id])
  end

  defp ids do
    Application.get_env(:lh, :incidencies)
  end
end
