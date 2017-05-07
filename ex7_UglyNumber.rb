=begin
Exercise 7: Ugly Number
Write a program to check whether a given number is an ugly number.
Ugly numbers are positive numbers whose prime factors only include 2, 3, 5. For
example, 6, 8 are ugly while 14 is not ugly since it includes another prime factor
7.
Note that 1 is typically treated as an ugly number.
# @param {Integer} num
# @return {Boolean}
=end


def is_ugly(num)

while num % 2 == 0
		num = num/2
	end

while num % 3 == 0
		num = num/3
	end

while num % 5 == 0
		num = num/5
	end

if num == 1
  puts "Ugly"
else
  puts "not Ugly"
end

end



=begin 							Solution:
check if the number can be divided by 2, i.e. num % 2 == 0, remainder is 0.
divide it by 2. Repeat division until 1. It's ugly.

if cannot divide by 2, continue to dividing by 3. Then keep dividing by 3. repeat until 1. It's ugly.

if cannot divide by 3, continue to dividing by 5. Then keep dividing by 5. repeat until 1. It's ugly.

if cannot divide by 5, means it's 7 and above. Means it's not ugly.
=end
