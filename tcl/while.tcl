# While loop testing

set num 1

# This is a normal way to write a Tcl while loop.

while {$num < 5} {
    puts "num is $num"
    set num [expr {$num + 1}]
}

puts "exited first loop with num equal to $num\n"

# The next example shows the difference between ".." and {...}
# How many times does the following loop run?  Why does it not
# print on each pass?

set num 0
while "$num < 5" {
    set num [expr {$num + 1}]
    if {$num > 7} break
    if "$num > 3" continue
    puts "num is $num"
}

puts "exited second loop with num equal to $num"
