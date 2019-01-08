defmodule Bob do
  def hey(input) do
    is_yelling = input == String.upcase(input)
    is_a_question = String.last(input) == "?"
    is_empty = String.trim(input) == ""
    has_only_alphabet_letters = String.upcase(input) != String.downcase(input)

    cond do
      is_empty ->
        "Fine. Be that way!"
      is_yelling && is_a_question && has_only_alphabet_letters ->
        "Calm down, I know what I'm doing!"
      is_a_question ->
        "Sure."
      is_yelling && has_only_alphabet_letters ->
        "Whoa, chill out!"
      true ->
        "Whatever."
    end
  end
end
