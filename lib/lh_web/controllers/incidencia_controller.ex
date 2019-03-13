defmodule LhWeb.IncidenciaController do
  use LhWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", incidencies: Lh.Neteja.incidencies)
  end

  def show(conn, %{"id" => id}) do
    render(conn, "show.html", incidencia: Lh.Neteja.incidencia(id))
  end
end
