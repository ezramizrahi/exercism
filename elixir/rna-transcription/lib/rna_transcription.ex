defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  # first iteration
  # def to_rna(dna) do
  #   dna
  #   |> convert_to_string()
  #   |> convert_to_list()
  #   |> Enum.map(&transcribe_char/1)
  #   |> join_strings()
  #   |> convert_to_charlist()
  # end

  # second iteration
  # def to_rna(dna) do
  #   dna
  #   |> to_string()
  #   |> String.graphemes
  #   |> Enum.map(fn
  #     "G" -> "C"
  #     "C" -> "G"
  #     "T" -> "A"
  #     "A" -> "U"
  #   end)
  #   |> Enum.join
  #   |> to_charlist()
  # end

  # third iteration
  def to_rna(dna) do
    dna
    |> Enum.map(fn
    ?G -> ?C
    ?C -> ?G
    ?T -> ?A
    ?A -> ?U
    end)
  end

  # def convert_to_string(dna) do
  #   to_string(dna)
  # end

  # def convert_to_list(dna) do
  #   String.split(dna, "", trim: true)
  # end

  # def transcribe_char(dna) do
  #   cond do
  #     dna == "G" ->
  #       "C"
  #     dna == "C" ->
  #       "G"
  #     dna == "T" ->
  #       "A"
  #     dna == "A" ->
  #       "U"
  #   end
  # end

  # def join_strings(dna) do
  #   Enum.join(dna)
  # end

  # def convert_to_charlist(dna) do
  #   to_charlist(dna)
  # end
end
