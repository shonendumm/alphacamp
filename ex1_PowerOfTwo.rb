# Exercise 1: Power of Two
# Given an integer, write a function to determine if it is a power # of two. 

def power(n)
	if n % 2 != 0 #to check if it's divisible by two
		puts "#{n} is not a power of two." 
		return false
	else
		x = 0
		loop do
		x +=1 #increase the counter each time
		case
		when 2**x == n
			puts "#{n} is 2 power of #{x}"
			return true
		when 2**x > n
			puts "#{n} is not a power of two."
			return false
		end
	end
end
end


power(8)
power(6363)
power(1122334)
power(1024)



