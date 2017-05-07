=begin 
Exercise 3: Move Zeros
Given an array nums, write a function to move all 0's to the end of it while maintaining the
relative order of the non-zero elements.

For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12,
0, 0].

Note:
1. You must do this in-place without making a copy of the array.
2. Minimize the total number of operations.
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
=end

def move_zeroes(nums)
	x = 0
	while x < (nums.length-1)
		if nums[x] == 0
			nums.delete_at(x)
			nums.push(0)
		end
		x += 1
	end

end




