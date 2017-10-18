class Verse
  def for_bottle(number)
    # copied this from
    # https://www.sandimetz.com/99bottles/sample/#_shameless_green
    case number
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
       "#{number} bottles of beer on the wall, " +
       "#{number} bottles of beer.\n" +
       "Take one down and pass it around, " +
       "#{number-1} bottles of beer on the wall.\n"
     end
  end
end
