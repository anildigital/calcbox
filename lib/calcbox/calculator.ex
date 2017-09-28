defmodule Calcbox.Calculator do
  @callback add(integer(), integer()) :: integer()
  @callback mult(integer(), integer()) :: integer()
end