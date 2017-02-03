"iNvEsTiGaTiOn".swapcase 
puts "iNvEsTiGaTiOn".swapcase.eql? "InVeStIgAtIoN"

puts "zom".gsub(/[o]/, "oo").eql? "zoom"
puts "zom".insert(1, "o").eql? "zoom"
puts "zom".replace("zoom").eql? "zoom"

puts "enhance".center(15).eql? "    enhance    "

puts "Stop! You’re under arrest!".upcase.eql? "STOP! YOU’RE UNDER ARREST!"

puts "the usual".concat(" suspects").eql? "the usual suspects"
puts ("the usual" << " suspects").eql? "the usual suspects"
puts "the usual".insert(-1, " suspects").eql? "the usual suspects"

" suspects".reverse.concat("lausu eht").reverse
# => "the usual suspects"

"The case of the disappearing last letter".chop 
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# 122 is the integer ordinal of z.

"How many times does the letter 'a' appear in this string?".count "a"
# => 4