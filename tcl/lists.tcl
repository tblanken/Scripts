# Lists

set list "a b c"
puts "Item at index 2 of the list {$list} is: [lindex $list 2]\n"

set y [split 7/4/1776 "/"]
puts "We celebrate on the [lindex $y 1]'th day of the [lindex $y 0]'th month\n"

set z [list puts "arg 2 is $y" ]
puts "A command resembles: $z\n"

set i 0
foreach j $list {
    puts "$j is item number $i in list list"
    incr i
}
