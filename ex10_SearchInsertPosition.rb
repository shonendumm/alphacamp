=begin
Exercise 10: Search Insert Position
Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order. You may assume no duplicates in the array.
Here are few examples.
[1,3,5,6], 5 → 2
[1,3,5,6], 2 → 1
[1,3,5,6], 7 → 4
[1,3,5,6], 0 → 0

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
=end

def search_insert(nums, target)
# check each value of the array and return their index if value == target
	nums.each_with_index do |value, index| 
		if value == target
			return index
		end
	end
# if the target is not in the array, check each number in the array against the target. If the first number is bigger than target, it means target should be at index 0. If target is bigger than number, then the target's index counter will increase by 1 each time, until the last value in the array.
	index_counter = 0
	nums.each do |num|
		if num > target
			return index_counter
		else
			index_counter += 1
		end
	end
	return index_counter
end

#test method, should return 1
nums = [1,2,3,4,8]
search_insert(nums, 2)