defmodule Lh.Neteja do
  alias Lh.Neteja.Api
  alias Lh.Neteja.Resources.Incidencia

  def incidencies do
    case Api.index do
      {:ok, response} -> Incidencia.from_collection(response.body)
      {:error, _} -> [%Lh.Neteja.Resources.Incidencia{}]
    end
  end

  def incidencia(id) do
    case Api.show(id) do
      {:ok, response} -> Incidencia.from_struct(response.body)
      {:error, _} -> %Lh.Neteja.Resources.Incidencia{}
    end
  end
end
