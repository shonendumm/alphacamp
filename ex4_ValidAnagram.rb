=begin Exercise 4: Valid Anagram
Given two strings s and t, write a function to determine if t is an anagram of s.
For example,
s = "anagram", t = "nagaram", return true.
s = "rat", t = "car", return false.
Note:
You may assume the string contains only lowercase alphabets.
=end

def is_anagram(s, t)
	x = s.split("")-t.split("")
	return x.empty?
end
