# Elixir Enum.reduce: Handling Empty Lists

This example demonstrates a common error in Elixir when using `Enum.reduce` with potentially empty lists.  The code crashes with a `FunctionClauseError` when the input list is empty because there's no explicit handling for this case.

The solution shows how to correctly handle the empty list using pattern matching to provide a default value.