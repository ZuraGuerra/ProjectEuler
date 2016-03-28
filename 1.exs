# MULTIPLES OF 3 AND 5
# If we list all the natural numbers below 10 
# that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

defmodule Multiples do
  # Call sum(100, [3, 5]) to solve the exercise
  def sum(top, dividends) do
    coincidences = Enum.map(dividends, fn(dividend) -> 
                     Enum.map(1..(top - 1), fn(x) ->
                       case rem(x, dividend) do
                         0 ->
                           x
                         _ ->
                       end
                     end)
                   end)
    coincidences
    |> List.flatten
    |> Enum.uniq
    |> List.delete(nil)
    |> Enum.sum
  end 
end