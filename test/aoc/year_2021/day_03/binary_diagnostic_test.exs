defmodule Aoc.Year2021.Day03.BinaryDiagnosticTest do
  use Aoc.DayCase
  doctest Aoc.Year2021.Day03.BinaryDiagnostic, import: true

  alias Aoc.Year2021.Day03.BinaryDiagnostic

  describe "part_1/1" do
    @tag day: 03, year: 2021, as_lines: true
    test "input", %{input: input} do
      assert input |> BinaryDiagnostic.part_1() == 741_950
    end
  end

  describe "part_2/1" do
    @tag day: 03, year: 2021, as_lines: true
    test "input", %{input: input} do
      assert input |> BinaryDiagnostic.part_2() == 903_810
    end
  end
end
