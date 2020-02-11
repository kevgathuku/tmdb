defmodule TmdbTest do
  use ExUnit.Case
  doctest Tmdb

  test "greets the world" do
    assert Tmdb.hello() == :world
  end
end
