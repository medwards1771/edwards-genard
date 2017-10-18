Talk about
-testing speed from running test suite rather than manually checking browser/other
-flocking rules
-https://github.com/medwards1771/99bottles/blob/master/lib/bottles.rb

Open Thoughts
Does it make sense to change the test now to not call any method other than song on bottles?

So I refactored the bottles class to take a song, and a song to take a verse, but now what to do with verse? How do I extract the case logic into objects/something else?
