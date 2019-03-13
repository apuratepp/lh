defmodule Lh.Neteja.Resources.Actuacio do
  defstruct [
    :ord,
    :dtfet,
    :estat,
    :comen,
    :usuari,
    :ldocs
  ]

  def from_struct(anoymous_struct) do
    struct(
      __MODULE__,
      Map.new(anoymous_struct, fn {k, v} -> {String.to_atom(String.downcase(k)), v} end)
    )
  end
end
