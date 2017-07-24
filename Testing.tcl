#TCL Script

############################## Adding for testing ################################

# Assign values to variables testing

set x "This is a String" 
set y 1.24

puts $x
puts $y

puts "..................................."

set label "The value in Y is: "
puts "$label $y" 

# End Assign values to variables testing

# ------------------------------------------------

# Evaluation and Substitution 1

# set NYCapital Albany
# set Label "The Capitol of New York is: "

# puts "$Label $Label"   ;# Prints the value of Z
# puts "$Label \$Label"  ;# Prints a literal $Z instead of the value of Z

# puts "\nBen Franklin is on the \$100.00 bill"

# set a 100.00
# puts "Washington is not on the $a bill"    ;# This is not what you want
# puts "Lincoln is not on the $$a bill"      ;# This is OK
# puts "Hamilton is not on the \$a bill"     ;# This is not what you want
# puts "Ben Franklin is on the \$$a bill"    ;# But, this is OK

# puts "\n................. examples of escape strings"
# puts "Tab\tTab\tTab"
# puts "This string prints out \non two lines"
# puts "This string comes out\
on a single line"

# End Evaluation and Substitution 1

# -------------------------------------------

# Evaluation and Substitution 2

#set NYCapital Albany
#set Label "The Capitol of New York is: "

#puts "\n................. examples of differences between  \" and \{"
#puts "$Label $NYCapital"
#puts {$Label $NYCapital}

#puts "\n....... examples of differences in nesting \{ and \" "
#puts "$Label {$NYCapital}"
#puts {Who said, "What this country needs is a good $0.05 cigar!"?}

#puts "\n................. examples of escape strings"
#puts {There are no substitutions done within braces \n \r \x0a \f \v}
#puts {But, the escaped newline at the end of a\
#string is still evaluated as a space}

# Evaluation and Substitution 2


# Results of a Command

#set num1 100
#set num2 256
#set sum [expr {$num2 + $num1}]
#set Label "$num2 plus $num1 is "

#puts "$Label $sum"
#puts "The square root of $num2 is [expr { sqrt($num2) }]\n"

#puts "Because of the precedence rules \"5 + -3 * 4\"   is: [expr {-3 * 4 + 5}]"
#puts "Because of the parentheses      \"(5 + -3) * 4\" is: [expr {(5 + -3) * 4}]"

#set num3 3
#set num4 4
#puts "The hypotenuse of a triangle: [expr {hypot($num3,$num4)}]"


# The trigonometric functions work with radians ...

#set pi6 [expr {3.1415926/6.0}]
#puts "The sine and cosine of pi/6: [expr {sin($pi6)}] [expr {cos($pi6)}]"

# Working with arrays

# set a(1) 10
# set a(2) 7
# set a(3) 17
# set b    2
# puts "Sum: [expr {$a(1)+$a($b)}]"

# End Results of a Command

# -------------------------------------------

# If-Else statement testing

# set num 1

# if {$num == 2} {puts "$num is 2"
# } else {puts "$num is not 2"}

# if {$num != 1} {
#   puts "$num is != 1"
# } else {
#    puts "$num is 1"
#}

# if $num==1 {puts "GOT 1"}

# End If-Else statement testing

# ------------------------------------------

# Text Comparison - Switch

#set x "ONE"
#set y 1
#set z ONE

# This is probably the easiest and cleanest form of the command
# to remember:
#switch $x {
#    "$z" {
#        set y1 [expr {$y+1}]
#        puts "MATCH \$z. $y + $z is $y1"
#    }
#    ONE {
#        set y1 [expr {$y+1}]
#        puts "MATCH ONE. $y + one is $y1"
#    }
#    TWO {
#        set y1 [expr {$y+2}]
#        puts "MATCH TWO. $y + two is $y1"
#    }
#    THREE {
#        set y1 [expr {$y+3}]
#        puts "MATCH THREE. $y + three is $y1"
#    }
#    default {
#        puts "$x is NOT A MATCH"
#    }
# }

# switch $x "$z" {
#    set y1 [expr {$y+1}]
#    puts "MATCH \$z. $y + $z is $y1"
#} ONE {
#    set y1 [expr {$y+1}]
#    puts "MATCH ONE. $y + one is $y1"
#} TWO {
#    set y1 [expr {$y+2}]
#    puts "MATCH TWO. $y + two is $y1"
#} THREE {
#    set y1 [expr {$y+3}]
#    puts "MATCH THREE. $y + three is $y1"
#} default {
#    puts "$x does not match any of these choices"
#}

#switch $x "ONE" "puts ONE=1" "TWO" "puts TWO=2" "default" "puts NO_MATCH"

#switch $x \
# "ONE"     "puts ONE=1"  \
#"TWO"     "puts TWO=2" \
"default"     "puts NO_MATCH";

# End Text Comparison - Switch


# ------------------------------------------------

# For and Incr testing

#for {set i 0} {$i < 10} {incr i} {
#    puts "I inside first loop: $i"
#}

#for {set i 0} {$i < 2} {incr i} {
#    puts "I inside second loop: $i"
#}

#puts "Start"
#set i 0
#while {$i < 10} {
#    puts "I inside third loop: $i"
#    incr i
#    puts "I after incr: $i"
#}

#set i 0
#incr i
# This is equivalent to:
#set i [expr {$i + 1}]

# End For and Incr testing

# ------------------------------------------------

# While loop testing

#set num 1

# This is a normal way to write a Tcl while loop.

#while {$num < 5} {
#    puts "num is $num"
#    set num [expr {$num + 1}]
#}

#puts "exited first loop with num equal to $num\n"

# The next example shows the difference between ".." and {...}
# How many times does the following loop run?  Why does it not
# print on each pass?

#set num 0
#while "$num < 5" {
#    set num [expr {$num + 1}]
#    if {$num > 7} break
#    if "$num > 3" continue
#    puts "num is $num"
#}

#puts "exited second loop with num equal to $num"

# End While loop testing

# ------------------------------------------------


# Adding new commands

#proc sum {arg1 arg2} {
#   set x [expr {$arg1 + $arg2}];
#   return $x
#}

#puts " The sum of 2 + 3 is: [sum 2 3]\n\n"

#proc for {a b c} {
#   puts "The for command has been replaced by a puts";
#   puts "The arguments were: $a\n$b\n$c\n"
#}

#for {set i 1} {$i < 10} {incr i}

# End Adding new commands


# ----------------------------------------------

# Lists

#set list "a b c"
#puts "Item at index 2 of the list {$list} is: [lindex $list 2]\n"

#set y [split 7/4/1776 "/"]
#puts "We celebrate on the [lindex $y 1]'th day of the [lindex $y 0]'th month\n"

#set z [list puts "arg 2 is $y" ]
#puts "A command resembles: $z\n"

#set i 0
#foreach j $list {
#    puts "$j is item number $i in list list"
#    incr i
#}

# End Lists

# -----------------------------------------------

# Adding and deleting members of a list

#set b [list a b {c d e} {f {g h}}]
#puts "Treated as a list: $b\n"

#set b [split "a b {c d e} {f {g h}}"]
#puts "Transformed by split: $b\n"

#set a [concat a b {c d e} {f {g h}}]
#puts "Concated: $a\n"

#lappend a {ij K lm}                        ;# Note: {ij K lm} is a single element
#puts "After lappending: $a\n"

#set b [linsert $a 3 "1 2 3"]               ;# "1 2 3" is a single element
#puts "After linsert at position 3: $b\n"

#set b [lreplace $b 3 5 "AA" "BB"]
#puts "After lreplacing 3 positions with 2 values at position 3: $b\n"

# End Adding and deleting members of a list


# ------------------------------------------------

# Length Index Range

#set string "this is my test string"

#puts "There are [string length $string] characters in \"$string\""
#puts "[string index $string 1] is the second character in \"$string\""
#puts "\"[string range $string 5 10]\" are characters between the 5'th and 10'th"

# End Length Index Range

# ------------------------------------------------

# Regular Expressions

#set sample "Where there is a will, There is a way."

#Match the first substring with lowercase letters only
#set result [regexp {[a-z]+} $sample match]
#puts "Result: $result match: $match"

# Match the first two words, the first one allows uppercase
#set result [regexp {([A-Za-z]+) +([a-z]+)} $sample match sub1 sub2 ]
#puts "Result: $result Match: $match 1: $sub1 2: $sub2"

# Replace a word
#regsub "way" $sample "lawsuit" sample2
#puts "New: $sample2"

# Use the -all option to count the number of "words"
#puts "Number of words: [regexp -all {[^ ]+} $sample]"
    
# End Regular Expressions

# -----------------------------------------------

# Associative Arrays

#proc addname {first last} {
#   global name

# Create a new ID (stored in the name array too for easy access)

#    incr name(ID)
#    set id $name(ID)

#    set name($id,first) $first   ;# The index is simply a string!
#    set name($id,last)  $last    ;# So we can use both fixed and
                                 #; varying parts
#}

# Initialise the array and add a few names
#global name
#set name(ID) 0

#addname Mary Poppins
#addname Uriah Heep
#addname Rene Descartes
#addname Leonardo "da Vinci"

# Check the contents of our database
# The parray command is a quick way to
# print it

#parray name

# Some array commands
#array set array1 [list {123} {Abigail Aardvark} \
#                       {234} {Bob Baboon} \
#                       {345} {Cathy Coyote} \
#                       {456} {Daniel Dog} ]

#puts "Array1 has [array size array1] entries\n"

#puts "Array1 has the following entries: \n [array names array1] \n"

#puts "ID Number 123 belongs to $array1(123)\n"

#if {[array exist array1]} {
#    puts "array1 is an array"
#} else {
#    puts "array1 is not an array"
#}

#if {[array exist array2]} {
#    puts "array2 is an array"
#} else {
#    puts "array2 is not an array"
#}

#proc existence {variable} {
#    upvar $variable testVar
#    if { [info exists testVar] } {
#	puts "$variable Exists"
#    } else {
#	puts "$variable Does Not Exist"
#    }
#}

# Create an array
#for {set i 0} {$i < 5} {incr i} { set a($i) test }

#puts "\ntesting unsetting a member of an array"
#existence a(0)
#puts "a0 has been unset"
#unset a(0)
#existence a(0)

#puts "\ntesting unsetting several members of an array, with an error"
#existence a(3)
#existence a(4)
#catch {unset a(3) a(0) a(4)}
#puts "\nAfter attempting to delete a(3), a(0) and a(4)"
#existence a(3)
#existence a(4)

#puts "\nUnset all the array's elements"
#existence a
#array unset a *

#puts "\ntesting unsetting an array"
#existence a
#puts "a has been unset"
#unset a
#existence a

# End Associative Arrays

# -------------------------------------------------------

# Dictionaries (alternatives to arrays)

# Create a dictionary:
# Two clients, known by their client number,
# with forenames, surname

#dict set clients 1 forenames Joe
#dict set clients 1 surname   Schmoe
#dict set clients 2 forenames Anne
#dict set clients 2 surname   Other

# Print a table
#puts "Number of clients: [dict size $clients]"
#dict for {id info} $clients {
#    puts "Client $id:"
#    dict with info {
#       puts "   Name: $forenames $surname"
#    }
#}

# End Dictionaries (alternatives to arrays)

# --------------------------------------

# File Access

# Count the number of lines in a text file

#set infile [open "myfile.txt" r]
#set number 0

# gets with two arguments returns the length of the line,
# -1 if the end of the file is found
#while { [gets $infile line] >= 0 } {
#    incr number
#}
#close $infile

#puts "Number of lines: $number"

# Also report it in an external file
#set outfile [open "report.out" w]
#puts $outfile "Number of lines: $number"
#close $outfile

# End File Access

# ----------------------------------------

# Running other programs from Tcl

# Write a Tcl script to get a platform-independent program:

# Create a unique (mostly) file name for a Tcl program
#set TMPDIR "/tmp"
#if { [info exists ::env(TMP)] } {
#    set TMPDIR $::env(TMP)
#}
#set tempFileName "$TMPDIR/invert_[pid].tcl"

# Open the output file, and
# write the program to it
#set outfl [open $tempFileName w]

#puts $outfl {
#    set len [gets stdin line]
#    if {$len < 5} {exit -1}

#    for {set i [expr {$len-1}]} {$i >= 0} {incr i -1} {
#        append l2 [string range $line $i $i]
#    }
#    puts $l2
#    exit 0
#}

# Flush and close the file
#flush $outfl
#close $outfl

# Run the new Tcl script:
# Open a pipe to the program (for both reading and writing: r+)

#set io [open "|[info nameofexecutable] $tempFileName" r+]

# send a string to the new program
#     *MUST FLUSH*
#puts $io "This will come back backwards."
#flush $io

# Get the reply, and display it.
#set len [gets $io line]

#puts  "To reverse: 'This will come back backwards.'"
#puts "Reversed is: $line"
#puts "The line is $len characters long"

# Run the program with input defined in an exec call
#set invert [exec [info nameofexecutable] $tempFileName << \
       "ABLE WAS I ERE I SAW ELBA"]

# display the results
#puts "The inversion of 'ABLE WAS I ERE I SAW ELBA' is \n $invert"

# Clean up
#file delete $tempFileName

# End Running other programs from Tcl

