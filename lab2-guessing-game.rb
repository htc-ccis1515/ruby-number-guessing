puts "What is your name, Player?"
name = gets.chomp
puts "Hello "+name+"! The game is simple. Give me a number (as a numeral) and I will choose a ~secret number~ from 1 to the number you entered. You will then enter a guess (as a numeral) and I will let you know if it is correct or not. Good Luck!"
puts "Please enter a number greater than 1..."
num = gets.chomp.to_i
while num <= 1 or num == 0
  puts "Please enter a number greater than 1..."
  num = gets.chomp.to_i
end
  secret = rand(num + 1)
  if secret == 0
    secret = rand(num + 1)
  else
    puts "I've picked my number. Make your best guess..."
    guess = gets.chomp.to_i
    count = 0
    while guess != secret
          count += 1
      puts "NOPE! Guess again..."
      guess = gets.chomp.to_i
    end
    count += 1
    puts "You got it! And it only took you "+count.to_s+" tries! Good Job!"
  end
