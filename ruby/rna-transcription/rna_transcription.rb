=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

class Complement
  def self.of_dna dna
    # check if dna includes invalid input
    if dna =~ /[UX]/
      ''
    else
      # gsub returns a copy of dna with all the occurrences
      # of the pattern (regex) substituted for the second argument
      dna.gsub(/[GCTA]/, 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U')
    end
  end
end
