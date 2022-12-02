defmodule Aoc.Year2022.Day02.RockPaperScissorsTest do
  use Aoc.DayCase
  doctest Aoc.Year2022.Day02.RockPaperScissors, import: true

  alias Aoc.Year2022.Day02.RockPaperScissors, as: Day01

  @example """
  A Y
  B X
  C Z
  """

  describe "part_1/1" do
    test "examples" do
      assert Day01.part_1(@example) == 15
    end

    @tag day: 02, year: 2022
    test "input", %{input: input} do
      assert input |> Day01.part_1() == 14_531
    end
  end

  describe "part_2/1" do
    test "examples" do
      assert Day01.part_2(@example) == 12
    end

    @tag day: 02, year: 2022
    test "input", %{input: input} do
      assert input |> Day01.part_2() == 11_258
    end
  end
end
