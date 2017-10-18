require_relative 'verse'

class Song
  def initialize
    @verse = Verse.new
  end

  def verses(start, finish)
    start.downto(finish).map{ |num| verse(num) }.join("\n")
  end

  def verse(number)
    @verse.for_bottle(number)
  end
end
