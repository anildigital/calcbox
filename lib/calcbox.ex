defmodule Calcbox do
  @behaviour Calcbox.Calculator
  @calculator Application.get_env(:calcbox, :calculator, Calcbox.MagicCalculator)

  def add(a, b) do
    @calculator.add(a, b)
  end

  def mult(a, b) do
    @calculator.mult(a, b)
  end
end
