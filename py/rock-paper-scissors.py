# Rock - crushes scissors
# Paper - covers rock
# Scissors - cuts paper
# Lizard poisons Spock


rock = 'rock'
paper = 'paper'
scissors = 'scissors'
lizard = 'lizard'
spock = 'Spock'

answer1 = input ("Player 1 please type 1 for rock, 2 for paper, 3 for scissors, 4 for lizard, 5 for Spock ")
answer2 = input ("Player 2 please type 1 for rock, 2 for paper,  3 for scissors, 4 for lizard, 5 for Spock ")

if answer1 == 1 and answer2 == 2:
   print "Player 2 wins because paper covers rock! "
elif answer1 == 1 and answer2 == 3:
   print "Player 1 wins because rock crushes scissors! " 
elif answer1 == 1 and answer2 == 4:
   print "Player 1 wins because rock crushes lizard! "
elif answer1 == 1 and answer2 == 5:
   print "Player 2 wins becuase Spock vaporizes rock! "
elif answer1 == 2 and answer2 == 1:
   print "Player 2 wins because paper covers rock! "
elif answer1 == 2 and answer2 == 3:
   print "Player 2 wins because scissors cuts paper! "
elif answer1 == 2 and answer2 == 4:
   print "Player 2 wins because lizard eats paper! "
elif answer1 == 2 and answer2 == 5:
   print "Player 2 wins because Spock disproves paper! "
elif answer1 == 3 and answer2 == 1:
   print "Player 1 wins because rock crushes scissors! "
elif answer1 == 3 and answer2 == 2:
   print "Player 1 wins because scissors cuts paper! "
elif answer1 == 3 and answer2 == 4:
   print "Player 1 wins because scissors decapitate lizard! "
elif answer1 == 3 and answer2 == 5:
   print "Player 2 wins because Spock smashes scissors! "
elif answer1 == 4 and answer2 == 1:
   print "Player 2 wins because rock crushes lizard! "
elif answer1 == 4 and answer2 == 2:
   print "Player 1 wins because lizard eats paper! "
elif answer1 == 4 and answer2 == 3:
   print "Player 3 wins because scissors decapitate lizard! "
elif answer1 == 4 and answer2 == 5:
   print "Player 1 wins because lizard poisons Spock! "
elif answer1 == 5 and answer2 == 1:
   print "Player 1 wins because Spock vaporizes rock! "
elif answer1 == 5 and answer2 == 2:
   print "Player 1 wins because Spock disproves paper! "
elif answer1 == 5 and answer2 == 3:
   print "Player 1 wins because Spock crushes scissors! "
elif answer1 == 5 and answer2 == 4:
   print "Player 2 wins because lizard poisons Spock! "
