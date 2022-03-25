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
    suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
    values = ["Ace", "King", "Queen", "Jack", "Ten", "Nine", "Eight", "Seven", "Six", "Five", "Four", "Three", "Two"]

    # Solution #1
    # Use nested for loops to create a list of lists then flatten it
    ####################################
    # deck = for suit <- suits do
    #   for value <- values do
    #     "#{value} of #{suit}"
    #   end
    # end
    # List.flatten(deck)

    # Solution #2
    # Elixir allows you to run multiple comprehensions at the same time
    ##########################
    for value <- values, suit <- suits do
      "#{value} of #{suit}"
    end

  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def save(deck, file_name) do
    binary = :erlang.term_to_binary(deck)
    File.write(file_name, binary)
  end

  def load(file_name) do
    {status, binary} = File.read(file_name)
    :erlang.binary_to_term(binary)
  end

end
