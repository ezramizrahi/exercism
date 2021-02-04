=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert num
    # hash containing key value pairs of numbers and rain sounds
    drops = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }
    # empty string
    message = ''
    # add drop noises to string if num % n === 0
    drops.each do |(n, drop)|
      message << drop if num % n === 0
    end
    # if not a factor then put num to string else put the message
    message.empty? ? num.to_s : message
  end
end
