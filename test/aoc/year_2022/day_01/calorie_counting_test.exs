defmodule Aoc.Year2022.Day01.CalorieCountingTest do
  use Aoc.DayCase, async: true
  doctest Aoc.Year2022.Day01.CalorieCounting, import: true

  alias Aoc.Year2022.Day01.CalorieCounting, as: Day01

  @example """
  1000
  2000
  3000

  4000

  5000
  6000

  7000
  8000
  9000

  10000
  """

  describe "part_1/1" do
    test "examples" do
      assert Day01.part_1(@example) == 24_000
    end

    @tag day: 01, year: 2022
    test "input", %{input: input} do
      assert input |> Day01.part_1() == 70_374
    end
  end

  describe "part_2/1" do
    test "examples" do
      assert Day01.part_2(@example) == 45_000
    end

    @tag day: 01, year: 2022
    test "input", %{input: input} do
      assert input |> Day01.part_2() == 204_610
    end
  end
end
