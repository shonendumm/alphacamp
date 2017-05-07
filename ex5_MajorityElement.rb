=begin
Exercise 5: Majority Element
Given an array of size n, find the majority element. The majority
element is the element that appears more than ⌊ n/2 ⌋ times.
You may assume that the array is non-empty and the majority element
always exist in the array.
# @param {Integer[]} nums
# @return {Integer}
=end


def majority_element(nums)
#loop each element and use find_all or collect on each element to get an array of that element. 
	x = 0
	while x < nums.length
		num_array = nums.find_all {|num| num == nums[x]} 
#test if the element array is bigger than half of array size
		if num_array.length > nums.length/2 
			return nums[x]
			break
		end
		x += 1
	end
end

#test the method, the answer should be 0.
x = [1, 0, 0, 2, 3, 0, 6, 0, 0, 0]
majority_element(x)
