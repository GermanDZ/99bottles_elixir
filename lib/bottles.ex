defmodule Bottles do
  def verse(number) do
    """
    #{String.capitalize(number_of_bottles(number))} of beer on the wall, #{
      number_of_bottles(number)
    } of beer.
    #{action(number)}, #{number_of_bottles(number - 1)} of beer on the wall.
    """
  end

  def verses(number1, number2) do
    (number1..number2 |> Enum.to_list() |> verses |> String.trim()) <> "\n"
  end

  defp verses([]) do
    ""
  end

  defp verses([number1 | other_numbers] = _) do
    verse(number1) <> "\n" <> verses(other_numbers)
  end

  defp action(0) do
    "Go to the store and buy some more"
  end

  defp action(number) do
    "Take #{element_name(number)} down and pass it around"
  end

  defp number_of_bottles(0) do
    "no more bottles"
  end

  defp number_of_bottles(1) do
    "1 bottle"
  end

  defp number_of_bottles(-1) do
    number_of_bottles(99)
  end

  defp number_of_bottles(number) do
    "#{number} bottles"
  end

  defp element_name(1) do
    "it"
  end

  defp element_name(_) do
    "one"
  end
end
