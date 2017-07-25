# Results of a Command

set num1 100
set num2 256
set sum [expr {$num2 + $num1}]
set Label "$num2 plus $num1 is "

puts "$Label $sum"
puts "The square root of $num2 is [expr { sqrt($num2) }]\n"

puts "Because of the precedence rules \"5 + -3 * 4\"   is: [expr {-3 * 4 + 5}]"
puts "Because of the parentheses      \"(5 + -3) * 4\" is: [expr {(5 + -3) * 4}]"

set num3 3
set num4 4
puts "The hypotenuse of a triangle: [expr {hypot($num3,$num4)}]"


# The trigonometric functions work with radians ...

set pi6 [expr {3.1415926/6.0}]
puts "The sine and cosine of pi/6: [expr {sin($pi6)}] [expr {cos($pi6)}]"
