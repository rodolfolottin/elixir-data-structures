defmodule Bob do
  def hey(input) do
    is_yelling = input == String.upcase(input)
    is_a_question = String.last(input) == "?"
    is_empty = String.trim(input) == ""
    has_numbers = Regex.run(~r/[\d]+/, input) != nil
    has_alphabet_letters = Regex.run(~r/[a-zA-Z]+/, input) != nil

    cond do
      is_a_question && not is_yelling ->
        "Sure."
      is_empty ->
        "Fine. Be that way!"
      is_yelling && is_a_question && not has_numbers ->
        "Calm down, I know what I'm doing!"
      is_a_question ->
        "Sure."
      has_numbers && not has_alphabet_letters ->
        "Whatever."
      is_yelling ->
        "Whoa, chill out!"
      true ->
        "Whatever."
    end
  end
end
