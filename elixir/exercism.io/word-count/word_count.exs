defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    words = split(sentence)

    Enum.reduce(words, %{}, fn word, acc ->
      Map.put(acc, word, count_number_of_words(words, word))
    end)
  end

  defp count_number_of_words(sentence, word) do
    Enum.count(sentence, fn(x) -> x === word end)
  end

  defp split(sentence) do
    sentence
    |> String.replace(~r/[!&@$%^&,:]/, "")
    |> String.replace(~r/[_,]/, " ")
    |> String.downcase
    |> String.split
  end
end
