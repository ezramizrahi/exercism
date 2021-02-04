=begin
Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
`difference_of_squares_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/difference-of-squares` directory.
=end

class Squares
  def initialize(n)
    @num = (1..n).to_a
  end
  # takes @num, sums it and squares the sum
  def square_of_sum
    @num.sum ** 2
  end
  # iterates through @num squaring each natural number, and then calling sum
  def sum_of_squares
    @num.map! {|el| el ** 2}.sum
  end
  # subtract sum of squares from square of sum
  def difference
    square_of_sum - sum_of_squares
  end
end
