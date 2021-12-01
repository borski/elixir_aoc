defmodule Aoc.Year2021.Day01.SonarSweepTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day01.SonarSweep, import: true

  alias Aoc.Year2021.Day01.SonarSweep

  describe "part_1/1" do
    @tag day: 01, year: 2021, as_int_list: true
    test "input", %{input: input} do
      assert input |> SonarSweep.part_1() == 1462
    end
  end

  describe "part_2/1" do
    @tag day: 01, year: 2021, as_int_list: true
    test "input", %{input: input} do
      assert input |> SonarSweep.part_2() == 1497
    end
  end
end
