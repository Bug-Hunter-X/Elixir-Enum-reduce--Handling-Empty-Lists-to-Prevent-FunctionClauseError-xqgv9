The solution uses pattern matching to explicitly handle the empty list case:

```elixir
defmodule MyList do
  def sum([]), do: 0
  def sum(list) do
    Enum.reduce(list, 0, fn x, acc -> x + acc end)
  end
end

IO.puts MyList.sum([1, 2, 3])  # Works fine
IO.puts MyList.sum([])       # Works correctly, outputs 0
```

By adding `def sum([]), do: 0`, we define a function clause that specifically handles an empty list, returning 0 as the sum.  This prevents the `FunctionClauseError`.