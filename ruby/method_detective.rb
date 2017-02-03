puts "~*"*6 + " culprit 1 was caught?"
"iNvEsTiGaTiOn".swapcase 
puts "iNvEsTiGaTiOn".swapcase.eql? "InVeStIgAtIoN"

puts "~*"*6 + " culprit 2 was caught?"
puts "zom".gsub(/[o]/, "oo").eql? "zoom"
puts "zom".insert(1, "o").eql? "zoom"
puts "zom".replace("zoom").eql? "zoom"

puts "~*"*6 + " culprit 3 was caught?"
puts "enhance".center(15).eql? "    enhance    "

puts "~*"*6 + " culprit 4 was caught?"
puts "Stop! You’re under arrest!".upcase.eql? "STOP! YOU’RE UNDER ARREST!"

puts "~*"*6 + " culprit 5 was caught?"
puts "the usual".concat(" suspects").eql? "the usual suspects"
puts ("the usual" << " suspects").eql? "the usual suspects"
puts "the usual".insert(-1, " suspects").eql? "the usual suspects"
puts " suspects".reverse.concat("lausu eht").reverse.eql? "the usual suspects"

puts "~*"*6 + " culprit 6 was caught?"

puts "The case of the disappearing last letter".chop.eql? "The case of the disappearing last lette"
puts "The case of the disappearing last letter".chomp("r").eql? "The case of the disappearing last lette"
puts "The case of the disappearing last letter".slice(0..38).eql? "The case of the disappearing last lette"

puts "~*"*6 + " culprit 7 was caught?"
puts "The mystery of the missing first letter".reverse.chop.reverse.eql? "he mystery of the missing first letter"
puts "The mystery of the missing first letter".slice(1..39).eql? "he mystery of the missing first letter"

puts "~*"*6 + " culprit 8 was caught?"
puts "Elementary,    my   dear        Watson!".squeeze(" ").eql? "Elementary, my dear Watson!"

puts "~*"*6 + " culprit 9 was caught?"
puts "z".ord.eql? 122 
# 122 is the integer ordinal of z.

puts "~*"*6 + " culprit 10 was caught?"
puts "How many times does the letter 'a' appear in this string?".count("a").eql? 4
