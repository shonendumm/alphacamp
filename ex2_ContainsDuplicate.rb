# Exercise 2: Contains Duplicate
# Given an array of integers, find if the array contains any duplicates.
# Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.


# @param {Integer[]} nums
# @return {Boolean}


def contains_duplicate(nums)
	dupe = false
	i = 0
	while i < nums.length
		j = 0
			while j < nums.length
				if nums[j] == nums[i] && j !=i # And it cannot be the same item checking itself
					dupe = true
				end
				j+=1
			end
		i += 1
	end
	if dupe
		puts "yes there are duplicate values"
		return true
	else
		puts "no duplicate values"
		return false
	end	
end

x = [1,2,3,4,5]
contains_duplicate(x)

y = [2,3,2,5,6,7,99, 3,3,99]
contains_duplicate(y)

