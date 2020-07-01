defmodule PackmaticPocTest do
  use ExUnit.Case
  doctest PackmaticPoc

  test "greets the world" do
    assert PackmaticPoc.hello() == :world
  end
end
