##############################################################################
#
# Update this script to:
#
# - Ask for the player's name
# - Greet the player by name and explain the game
# - Ask for the maximum number to select as the secret number
# - Pick a secret number at random between 1 and the number entered
# - Ask the player (by name) to guess a number
# - Tell the player if they guessed correctly
# - If they guessed the number correctly, congratulate them for winning
#   and then tell them how many guesses it took for them to win.
# - If they did not guess correctly, tell them whether their guess was
#   too high or too low.
#
# DON'T FORGET:
#   Use methods to break down the problem and make the code easier to read.
#
#############################################################################
def greet_player
puts "What is your name?"
name = gets.chomp
puts "Hello " + name
end
greet_player

def intro
puts "In this game, you will be asked to set a max number"
puts "You will guess the max number until you get it right"
puts "When you guess correctly, the game ends and it tells you how many guesses it took."
end
intro

def maxnumber
puts "enter a max number"
maxnum = gets.chomp
puts "guess the secret number between 1 and " + maxnum.to_s

answer = gets.chomp
secretnum = rand(1..maxnum.to_i).to_i
end
maxnumber

maxnum = gets.chomp
answer = gets.chomp
secretnum = rand(1..maxnum.to_i).to_i
guesses = 1
while answer != secretnum
puts "that is incorrect"
  guesses + 1
  break
end
if answer == secretnum
  puts "That is correct, it took you " + guesses.to_s + " guesses"
end
