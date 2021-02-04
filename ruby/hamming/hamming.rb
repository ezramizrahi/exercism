=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

# create Hamming class
class Hamming
  # compute method
  def self.compute(strand1, strand2)
    # convert strands into arrays
    @new_strand1 = strand1.split('')
    @new_strand2 = strand2.split('')
    # check if strands are equal empty
    if @new_strand1.empty? && @new_strand2.empty?
      0
    # check if strands are equal length
    elsif @new_strand1.count != @new_strand2.count
      # raise error if strands aren't equal length
      raise(ArgumentError).new('Only strands of equal length are allowed.')
    # check if strands aren't empty
    elsif @new_strand1.empty? == false && @new_strand2.empty? == false
      # combine array elements in an ordered way, then count differences
      @new_strand1.zip(@new_strand2).count { |a, b| a != b }
    end
  end
end
