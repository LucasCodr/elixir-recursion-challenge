defmodule ListLength do
  def call(list), do: count(list, 0)

  defp count([], acc), do: acc

  defp count([_ | tail], acc) do
    acc = acc + 1;
    count(tail, acc)
  end
end

# 1, 2

# 1 ex: [1, 2] hd: 1, tail [2], 0 -> acc = 0 + 1, count([2], 1)
# 2 ex: [2] hd: 2, tail: [], 1 -> acc = 1 + 1, count([], 2)
# 3 ex: [] acc = 2
