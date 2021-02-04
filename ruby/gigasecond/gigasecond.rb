=begin
Write your code for the 'Gigasecond' exercise in this file. Make the tests in
`gigasecond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/gigasecond` directory.
=end

class Gigasecond
  # define gigasecond variable
  @gigasecond = 10**9
  # from method
  def self.from(time)
    # add gigasecond to time
    time + @gigasecond
  end
end
