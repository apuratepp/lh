defmodule Lh.Neteja.Resources.Incidencia do
  alias Lh.Neteja.Resources.{Actuacio,Doc}

  defstruct [
    :codinc,
    :comentari,
    :descripcio,
    :dtcreacio,
    :dtinici,
    :dtfi,
    :ldocsini,
    :actuacions,
    :estat
  ]

  def from_struct(anoymous_struct) do
    struct(
      __MODULE__,
      Map.new(anoymous_struct, fn {k, v} ->
        {
          String.to_atom(String.downcase(k)),
          nested_resource(k, v)
        }
      end)
    )
  end

  def from_collection(collection) do
    Enum.map(collection, &from_struct/1)
  end

  defp nested_resource("lDocsIni", nil), do: []
  defp nested_resource("lDocsIni", v) do
    Enum.map(v, &Doc.from_struct/1)
  end

  defp nested_resource("Actuacions", nil), do: []
  defp nested_resource("Actuacions", v) do
    Enum.map(v, &Actuacio.from_struct/1)
  end

  defp nested_resource(_, v), do: v
end
