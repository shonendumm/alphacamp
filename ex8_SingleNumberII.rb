=begin 
Exercise 8: Single Number II
Given an array of integers, every element appears three times except for
one, which appears exactly once. Find that single one.
Note:
Your algorithm should have a linear runtime complexity. Could you implement
it without using extra memory?
# @param {Integer[]} nums
# @return {Integer}

Linear runtime complexity => O(n)
Start with element 1, find if it appears again in the array. Once found, stop. Move to element 2 and repeat search.

=end


def single_number(nums)
i = 0
	while i < nums.length
		j = 0
			while j < nums.length
				if nums[j] == nums[i] && j !=i 
# It cannot be the same item checking itself. And once it finds another repeated element, can delete all iterations of that element from the array. Then break the inner j loop to continue to the next i.
					nums.delete(nums[j])
					break
				end
			j+=1
			end
	i += 1
	end
puts "#{nums}"
end


#testing, result should be [3]
x = [1,1,1,2,2,2,3,4,4,4]
single_number(x)