defmodule Aoc.Year2021.Day02.Dive do
  @moduledoc """
  ## --- Day 2: Dive! --- 

  Now, you need to figure out how to pilot this thing. 

  It seems like the submarine can take a series of commands like `forward 1`,
  `down 2`, or `up 3`: 

  - `forward X` increases the horizontal position by `X` units. 
  - `down X`*increases* the depth by `X` units. 
  - `up X`*decreases* the depth by `X` units. 
  Note that since you're on a submarine, `down` and `up` affect your *depth*, and
  so they have the opposite result of what you might expect. 

  The submarine seems to already have a planned course (your puzzle input). You
  should probably figure out where it's going. For example: 

  `forward 5
  down 5
  forward 8
  up 3
  down 8
  forward 2
  `Your horizontal position and depth both start at `0`. The steps above would then
  modify them as follows: 

  - `forward 5` adds `5` to your horizontal position, a total of `5`. 
  - `down 5` adds `5` to your depth, resulting in a value of `5`. 
  - `forward 8` adds `8` to your horizontal position, a total of `13`. 
  - `up 3` decreases your depth by `3`, resulting in a value of `2`. 
  - `down 8` adds `8` to your depth, resulting in a value of `10`. 
  - `forward 2` adds `2` to your horizontal position, a total of `15`. 
  After following these instructions, you would have a horizontal position of `15`
  and a depth of `10`. (Multiplying these together produces `*150*`.) 

  Calculate the horizontal position and depth you would have after following the
  planned course. *What do you get if you multiply your final horizontal position
  by your final depth?

  ## --- Part Two --- 

  Based on your calculations, the planned course doesn't seem to make any sense.
  You find the submarine manual and discover that the process is actually slightly
  more complicated. 

  In addition to horizontal position and depth, you'll also need to track a third
  value, *aim*, which also starts at `0`. The commands also mean something
  entirely different than you first thought: 

  - `down X`*increases* your aim by `X` units. 
  - `up X`*decreases* your aim by `X` units. 
  - `forward X` does two things:- It increases your horizontal position by `X` units. 
  - It increases your depth by your aim *multiplied by*`X`. 
   
  Again note that since you're on a submarine, `down` and `up` do the opposite of
  what you might expect: "down" means aiming in the positive direction. 

  Now, the above example does something different: 

  - `forward 5` adds `5` to your horizontal position, a total of `5`. Because your aim is `0`, your depth does not change. 
  - `down 5` adds `5` to your aim, resulting in a value of `5`. 
  - `forward 8` adds `8` to your horizontal position, a total of `13`. Because your aim is `5`, your depth increases by `8*5=40`. 
  - `up 3` decreases your aim by `3`, resulting in a value of `2`. 
  - `down 8` adds `8` to your aim, resulting in a value of `10`. 
  - `forward 2` adds `2` to your horizontal position, a total of `15`.  Because your aim is `10`, your depth increases by `2*10=20` to a total of `60`. 
  After following these new instructions, you would have a horizontal position of
  `15` and a depth of `60`. (Multiplying these produces `*900*`.) 

  Using this new interpretation of the commands, calculate the horizontal position
  and depth you would have after following the planned course. *What do you get if
  you multiply your final horizontal position by your final depth?* 
  """

  @doc ~S'''
  Given a list of commands, calculate the horizontal position and depth you would have 
  after following the planned course and multiplying the final horizontal position by 
  the final depth.

    iex> part_1(["forward 5", "down 5", "forward 8", "up 3", "down 8", "forward 2"])
    150
  '''
  def part_1(input) do
    parse_input(input)
    |> Enum.reduce({0, 0}, &process_command/2)
    |> Tuple.product()
  end

  @doc ~S'''
  Given a list of commands, calculate the horizontal position and depth you would have 
  after following the planned course and multiplying the final horizontal position by 
  the final depth.

    iex> part_2(["forward 5", "down 5", "forward 8", "up 3", "down 8", "forward 2"])
    900
  '''
  def part_2(input) do
    parse_input(input)
    |> Enum.reduce({0, 0, 0}, &process_command/2)
    |> Tuple.delete_at(2)
    |> Tuple.product()
  end

  defp process_command([command, units], acc)
       when tuple_size(acc) == 2 do
    part1_command([command, units], acc)
  end

  defp process_command([command, units], acc)
       when tuple_size(acc) == 3 do
    part2_command([command, units], acc)
  end

  defp part1_command(["forward", units], {depth, position}) do
    {
      depth,
      position + units
    }
  end

  defp part1_command(["down", units], {depth, position}) do
    {
      depth + units,
      position
    }
  end

  defp part1_command(["up", units], {depth, position}) do
    {
      depth - units,
      position
    }
  end

  defp part2_command(["forward", units], {depth, position, aim}) do
    {
      depth + aim * units,
      position + units,
      aim
    }
  end

  defp part2_command(["down", units], {depth, position, aim}) do
    {
      depth,
      position,
      aim + units
    }
  end

  defp part2_command(["up", units], {depth, position, aim}) do
    {
      depth,
      position,
      aim - units
    }
  end

  defp parse_input(input) do
    input
    |> Enum.map(&String.split/1)
    |> Enum.map(fn [c, u] -> [c, String.to_integer(u)] end)
  end
end
