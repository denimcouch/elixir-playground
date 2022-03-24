# What is a module?
# defmodule will create a module called Cards.
# a module is a collection of methods or functions.
# most of code written in Elixir is organized in modules

defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  create_deck

  ## Examples

      iex> Cards.create_deck
      ["Ace", "Two", "Three"]

  """

  def create_deck do
    ["Ace", "Two", "Three"]
  end
end
