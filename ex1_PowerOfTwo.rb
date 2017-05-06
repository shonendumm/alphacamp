# Exercise 1: Power of Two
# Given an integer, write a function to determine if it is a power # of two. 

def is_power_of_two(n)
	if n % 2 != 0 #to check if it's divisible by two
		puts "#{n} is not a power of two." 
		return false
	else
		x = 0
		loop do
		x +=1 #increase the counter each time
		case
		when 2**x == n
			puts "#{n} is 2 to power of #{x}"
			return true
		when 2**x > n
			puts "#{n} is not a power of two."
			return false
		end
	end
end
end


is_power_of_two(8)
is_power_of_two(6363)
is_power_of_two(1122334)
is_power_of_two(1024)



