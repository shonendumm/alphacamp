=begin
6) Write a method that receives a positive number. If the number:
- is between 1 and 5, method prints "I am between 1 and 5".
- is between 6 and 10, method prints "I am between 6 and 10"
- otherwise, method prints "I am more than 10"
=end

def check(num)
  if num >= 1 && num <=5
    p "I am between 1 and 5"
  elsif num >= 6 && num <=10
    p "I am between 6 and 10"
  else
    p "I am more than 10"
  end
end