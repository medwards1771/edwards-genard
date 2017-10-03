class Bottles

  def song
    verses(99, 0)
  end

  def verses(start, finish)
    # used downto bc I remember it from SM + KO's solution
    # also bc I tried doing (2..0).to_a and realized it didn't work!
    # only (smaller..bigger).to_a fills an array
    start.downto(finish).map{ |num| verse(num) }.join("\n")
  end

  def verse(bottle_count)
    "#{bottles(bottle_count).capitalize} #{collective(bottle_count)} of beer on the wall, #{bottles(bottle_count)} #{collective(bottle_count)} of beer.\n" +
    if bottle_count > 0
      "Take #{pronoun(bottle_count)} down and pass it around, #{bottles_remaining(bottle_count)} #{collective(bottle_count - 1)} of beer on the wall.\n"
    else
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  private

  def collective(bottles)
    # got this method name by googling "singular or plural"
    bottles == 1 ? 'bottle' : 'bottles'
  end

  def pronoun(bottles)
    bottles > 1 ? 'one' : 'it'
  end

  def bottles_remaining(bottles)
    bottles > 1 ? "#{bottles - 1}" : 'no more'
  end

  def bottles(bottles)
    bottles == 0 ? 'no more' : "#{bottles}"
  end
end
