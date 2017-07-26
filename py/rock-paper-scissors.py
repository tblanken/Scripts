# Rock - crushes scissors
# Paper - covers rock
# Scissors - cuts paper

rock = 'rock'
paper = 'paper'
scissors = 'scissors'

answer1 = input ("Player 1 please type 1 for rock, 2 for paper and 3 for scissors ")
answer2 = input ("Player 2 please type 1 for rock, 2 for paper and 3 for scissors ")

if answer1 == 1 and answer2 == 2:
   print "Player 2 wins because paper covers rock! "
elif answer1 == 1 and answer2 == 3:
   print "Player 1 wins because rock crushes scissors! " 
elif answer1 == 2 and answer2 == 1:
   print "Player 2 wins because paper covers rock! "
elif answer1 == 2 and answer2 == 3:
   print "Player 2 wins because scissors cuts paper! "
elif answer1 == 3 and answer2 == 1:
   print "Player 1 wins because rock crushes scissors! "
elif answer1 == 3 and answer2 == 2:
   print "Player 1 wins because scissors cuts paper! "
