# Evaluation and Substitution 1

set NYCapital Albany
set Label "The Capitol of New York is: "

puts "$Label $Label"   ;# Prints the value of Z
puts "$Label \$Label"  ;# Prints a literal $Z instead of the value of Z

puts "\nBen Franklin is on the \$100.00 bill"

set a 100.00
puts "Washington is not on the $a bill"    ;# This is not what you want
puts "Lincoln is not on the $$a bill"      ;# This is OK
puts "Hamilton is not on the \$a bill"     ;# This is not what you want
puts "Ben Franklin is on the \$$a bill"    ;# But, this is OK

puts "\n................. examples of escape strings"
puts "Tab\tTab\tTab"
puts "This string prints out \non two lines"
puts "This string comes out\
on a single line"
