=begin 
Exercise 6: Remove Duplicates from Sorted Array
Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.
Do not allocate extra space for another array, you must do this in place with constant memory.
For example,
Given input array nums = [1,1,2],
Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn't matter what you leave beyond the new length.

# @param {Integer[]} nums
# @return {Integer}
=end

def remove_duplicates(nums)
#loop through the whole array, compare each element with the one before it, if it's the same number, delete that element.
	x = 0
	while x < nums.length 
		if nums[x] == nums[x+1]
			nums.delete_at(x+1)
		end
# need to check for duplicates and redo the loop iteration to remove dupes
	redo if nums[x] == nums[x+1] 
	x += 1 
	end
	puts "length: #{nums.length}"
	nums.length
end


#test method, result array should be [0, 1, 2, 3, 4, 5, 6, 7] and return length 8.
k = [0,0,1,1,1,2,3,4,5,5,6,7,7,7]
remove_duplicates(k)

