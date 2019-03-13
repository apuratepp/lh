defmodule Lh.Neteja.Resources.Doc do
  defstruct [
    :nom,
    :link
  ]

  def from_struct(anoymous_struct) do
    struct(
      __MODULE__,
      Map.new(anoymous_struct, fn {k, v} -> {String.to_atom(String.downcase(k)), v} end)
    )
  end
end
