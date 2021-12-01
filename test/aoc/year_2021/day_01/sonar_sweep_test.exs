defmodule Aoc.Year2021.Day01.SonarSweepTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day01.SonarSweep, import: true

  alias Aoc.Year2021.Day01.SonarSweep

  describe "part_1/1" do
    test "examples" do
      input = """
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

      assert input |> SonarSweep.part_1() == 7
    end

    @tag day: 01, year: 2021
    test "input", %{input: input} do
      assert input |> SonarSweep.part_1() == 1462
    end
  end

  describe "part_2/1" do
    test "examples" do
    end

    @tag day: 01, year: 2021
    test "input", %{input: input} do
      assert input |> SonarSweep.part_2() == input
    end
  end
end
