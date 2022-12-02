defmodule Aoc.Year2021.Day04.GiantSquidTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day04.GiantSquid, import: true

  alias Aoc.Year2021.Day04.GiantSquid

  describe "part_1/1" do
    test "examples" do

    end

    @tag day: 04, year: 2021
    test "input", %{input: input} do
      assert input |> GiantSquid.part_1() == input
    end
  end

  describe "part_2/1" do
    test "examples" do

    end

    @tag day: 04, year: 2021
    test "input", %{input: input} do
      assert input |> GiantSquid.part_2() == input
    end
  end
end