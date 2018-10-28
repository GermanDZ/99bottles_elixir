defmodule Bottles do
  def verse(number) do
    """
    #{number_of_bottles(number)} of beer on the wall, #{number_of_bottles(number)} of beer.
    Take one down and pass it around, #{number_of_bottles(number - 1)} of beer on the wall.
    """
  end

  defp number_of_bottles(1) do
    "1 bottle"
  end

  defp number_of_bottles(number) do
    "#{number} bottles"
  end
end
