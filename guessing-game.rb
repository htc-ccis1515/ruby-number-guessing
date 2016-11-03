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

puts "Hello, what's your name?"
name = gets.chomp
puts "Hello " + name + "!" " We're playing a number guessing game.
I will think of a number and you will guess it."

puts "what is the maximum number do you want to guess from?"
Max = gets.chomp.to_i
number = rand(1..Max)
num_guesses = 0

puts "I'm thinking of a random number from 1 to #{Max}"
puts "Can you guess it " + name + " ?"

loop do
print "What is your guess " + name + " ?"
guess = gets.chomp.to_i
num_guesses += 1

unless guess == number
message = if guess > number
"Too high"
else
"Too low"
end
puts message
else
puts "You got it " + name + "!"
puts "It took you #{num_guesses} guesses."
exit
end
end
