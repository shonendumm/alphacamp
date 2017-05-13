=begin
2) Define a Hash with keys "a", "b", "c", "d", and values ["avocado"], ["bean", "banana"], ["carrot", "cherry", "clementine"] and ["date", "dragon fruit"] respectively.
Then:
a) print the hash to the console
b) find a way to print the total number of fruits. It should give you number 9.
c) remove all "c" fruits
d) print the hash again
=end

fruits = {
    "A" => ["avocado"],
    "B" => ["bean", "banana"],
    "C" => ["carrot", "cherry", "clementine"],
    "D" => ["date", "dragon fruit"]
}

p fruits # prints hash to console

p fruits.values.flatten.length #gives total number of fruits = 8

fruits.reject! { |k,v| k == "C" } #removes all "C" fruits

p fruits #prints the hash






