guess_count = 0

puts 'Well hello there friend!  Just what is your name?'
name = gets.chomp
puts 'Hello ' + name + '.  This is a fun little number guessing game.'
puts 'What is the highest number you\'d like to use?'
puts 'Keep in mid the scale starts at 1 so picking 2 would just be boring.'
random = gets.chomp.to_s
number = rand(1..random.to_i)
puts 'im thinking of a number between 1 and ' + random + '!'
puts 'Ok ' + name + ' let\'s get down to it, what\'s your guess?'
guess = gets.chomp.to_i
guess_count += 1
while guess != number
  if guess < number
    puts 'Your guess is smaller than the number.'
  else
    puts 'Your guess is larger than the number.'
  end
puts 'whats your guess?'
guess = gets.chomp.to_i
guess_count += 1
end
puts 'Good job!  it took you ' + guess_count.to_s + ' guesses to get it right!'
