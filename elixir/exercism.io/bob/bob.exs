defmodule Bob do
  def hey(input) do
    cond do
      is_empty?(input) ->
        "Fine. Be that way!"
      is_yelling?(input) && is_a_question?(input) && has_only_alphabet_letters?(input) ->
        "Calm down, I know what I'm doing!"
      is_a_question?(input) ->
        "Sure."
      is_yelling?(input) && has_only_alphabet_letters?(input) ->
        "Whoa, chill out!"
      true ->
        "Whatever."
    end
  end

  defp is_yelling?(input), do: input == String.upcase(input)
  defp is_a_question?(input), do: String.last(input) == "?"
  defp is_empty?(input), do: String.trim(input) == ""
  defp has_only_alphabet_letters?(input), do: String.upcase(input) != String.downcase(input)
end
