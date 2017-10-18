require_relative 'song'

class Bottles
  def initialize
    @song = Song.new
  end

  def song
    @song.verses(99,0)
  end

  def verses(start, finish)
    @song.verses(start, finish)
  end

  def verse(number)
    @song.verse(number)
  end
end
