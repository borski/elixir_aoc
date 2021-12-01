defmodule Aoc.Year2021.Day01.SonarSweepTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day01.SonarSweep, import: true

  alias Aoc.Year2021.Day01.SonarSweep

  @example_input """
  199
  200
  208
  210
  200
  207
  240
  269
  260
  263
  """

  describe "part_1/1" do
    test "examples" do
      assert @example_input |> SonarSweep.part_1() == 7
    end

    @tag day: 01, year: 2021
    test "input", %{input: input} do
      assert input |> SonarSweep.part_1() == 1462
    end
  end

  describe "part_2/1" do
    test "examples" do
      assert @example_input |> SonarSweep.part_2() == 5
    end

    @tag day: 01, year: 2021
    test "input", %{input: input} do
      assert input |> SonarSweep.part_2() == 1497
    end
  end
end
