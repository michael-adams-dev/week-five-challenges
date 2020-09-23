# Usage statatement
def usage
	puts "coin_flip will simulate flipping a coin the number of times specified."
	puts "You can specify a number of flips as an argument, or you will be prompted to enter a number."	
end

def flip_coin(flips)
	results = {heads:0,tails:0}
	flips.times do
		flip = Random.rand(1..2)
		flip == 1 ? results[:heads] += 1
				  : results[:tails] += 1
	end
	return results
end

# Main program

if ARGV.include?('-h') || ARGV.include?('--help')
	number_of_flips = 0
	puts "coin_flip will simulate flipping a coin the number of times specified."
	puts "You can specify a number of flips as an argument, or you will be prompted to enter a number."
elsif ARGV[0].to_i > 0
	number_of_flips = ARGV[0].to_i
else
	number_of_flips = 0	
end

if number_of_flips == 0
	# prompt for number
	puts "how many flips?"
	number_of_flips = STDIN.gets.to_i
end

puts flip_coin number_of_flips
