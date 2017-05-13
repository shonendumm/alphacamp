=begin
4) Having a following array:
chars = ["a", "K", "r", "e", "V", "L", "C"]
Iterate over the array, or use map method, to print following:
- a is lowercase
- K is uppercase
- r is lowercase
- e is lowercase
- V is uppercase
- L is uppercase
- C is uppercase
=> nil
=end


chars = ["a", "K", "r", "e", "V", "L", "C"]

chars.each {|i|
  if i == i.upcase
    p i + " is uppercase"
  else 
    p i + " is lowercase"
  end
} 
