defmodule CalcboxTest do
  use ExUnit.Case
  doctest Calcbox
  import Mox

  test "greets the world" do
    assert Calcbox.hello() == :world
  end

  test "invokes add and mult" do
    Calcbox.CalcMock
    |> expect(:add, fn x, y -> x + y end)
    |> expect(:mult, fn x, y -> x * y end)
  
    assert Calcbox.CalcMock.add(2, 3) == 5
    assert Calcbox.CalcMock.mult(2, 3) == 6
  after
    verify!() # or verify!(Calcbox.CalcMock)
  end

end
