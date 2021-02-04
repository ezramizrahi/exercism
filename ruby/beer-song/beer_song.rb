=begin
Write your code for the 'Beer Song' exercise in this file. Make the tests in
`beer_song_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/beer-song` directory.
=end

class BeerSong
  # old code for reference, delete later
  # def verse(n)
  #   puts "#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, #{n - 1} bottles of beer on the wall.\n"
  # end

  # more old code
  # verse method
  # def verse(num)
  #   num.downto(0).each do |n|
  #       puts "#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, #{n - 1} bottles of beer on the wall.\n"
  #   end
  # end

  def self.recite(starting, count)
    case count
    when 1
      verse(starting)
    else
      starting.downto(starting - (count - 1)).map {|n| verse(n)}.join("\n")
    end
  end

  def self.verse(num)
    case num
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, " +
      "2 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall.\n"
    else
      # lyrics for bottles 99 to 3
      "#{num} bottles of beer on the wall, " +
      "#{num} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{num - 1} bottles of beer on the wall.\n"
    end
  end

  # song method, calls verses method
  def song
    verses(99, 0)
  end
  # verses method, counts down from the start number to the end number
  # and joins the verses
  def verses(start_point, end_point)
    start_point.downto(end_point).map {|n| verse(n)}.join("\n")
  end
  # verse method, contains lyrics to song
  def verse(num)
    case num
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n" +
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n" +
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, " +
      "2 bottles of beer.\n" +
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall.\n"
    else
      # lyrics for bottles 99 to 3
      "#{num} bottles of beer on the wall, " +
      "#{num} bottles of beer.\n" +
      "Take one down and pass it around, " +
      "#{num - 1} bottles of beer on the wall.\n"
    end
  end
end
